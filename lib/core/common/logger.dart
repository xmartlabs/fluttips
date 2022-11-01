import 'package:flutter_template/core/common/crash_report_tool.dart';
import 'package:logger/logger.dart' as dart_log;
import 'package:logger/logger.dart';
import 'package:stack_trace/stack_trace.dart';

abstract class Logger {
  // TODO: Setup the report tool
  static final CrashReportTool _crashReportTool = NoOpsCrashReportTool();

  static final dart_log.Logger _instance = dart_log.Logger(
    printer: _CrashReportWrappedPrinter(PrettyPrinter(), _crashReportTool),
    filter: _DisplayAllLogFilter(),
    output: MultiOutput([ConsoleOutput()]),
  );

  static Future init() => _crashReportTool.init();

  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.verbose, message, error, stackTrace);

  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.debug, message, error, stackTrace);

  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.info, message, error, stackTrace);

  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.warning, message, error, stackTrace);

  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.error, message, error, stackTrace);

  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.wtf, message, error, stackTrace);

  static Future<void> fatal({dynamic error, StackTrace? stackTrace}) async {
    d('Fatal', error, stackTrace);
    await _crashReportTool.logFatal(error, stackTrace);
  }
}

class _DisplayAllLogFilter extends LogFilter {
  // TODO: In the future it should be filtered based on the env
  @override
  bool shouldLog(LogEvent event) => true;
}

class _CrashReportWrappedPrinter extends LogPrinter {
  final LogPrinter _printer;
  final CrashReportTool _crashReportTool;

  _CrashReportWrappedPrinter(this._printer, this._crashReportTool);

  @override
  void init() => _printer.init();

  StackTrace _currentStacktrace() {
    // Filter: FirebaseCrashlytics.record, _CrashReportWrappedPrinter
    // Logger.log, Logger.e
    var trace = Trace.current(4);
    var frames = trace.frames;
    final newFrames = frames.map(
      (frame) => Frame(
        frame.uri,
        frame.line,
        frame.column,
        frame.member,
      ),
    );
    return _PrintableTrace(newFrames);
  }

  @override
  List<String> log(LogEvent event) {
    final sanitizedEvent = dart_log.LogEvent(
      event.level,
      event.message,
      event.error,
      event.stackTrace ?? _currentStacktrace(),
    );
    switch (event.level) {
      case Level.verbose:
      case Level.debug:
      case Level.nothing:
      case Level.info:
        break;
      case Level.warning:
      case Level.error:
      case Level.wtf:
        _crashReportTool.logNonFatal(sanitizedEvent);
        break;
    }
    return _printer.log(sanitizedEvent);
  }

  @override
  void destroy() => _printer.destroy();
}

class _PrintableTrace extends Trace {
  _PrintableTrace(Iterable<Frame> frames, {String? original})
      : super(frames, original: original);

  // It's equal to VMTrace.toString() Method.
  // Firebase use it to generate the stacktrace
  @override
  String toString() {
    var i = 1;
    return frames.map((frame) {
      var number = '#${i++}'.padRight(8);
      var member = frame.member!
          .replaceAllMapped(
            RegExp(r'[^.]+\.<async>'),
            (match) => '${match[1]}.<${match[1]}_async_body>',
          )
          .replaceAll('<fn>', '<anonymous closure>');
      var line = frame.line ?? 0;
      var column = frame.column ?? 0;
      return '$number$member (${frame.uri}:$line:$column)\n';
    }).join();
  }
}
