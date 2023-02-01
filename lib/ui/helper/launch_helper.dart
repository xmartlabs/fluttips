import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openYoutubePlaylist(String playlistId) async {
  final url = 'www.youtube.com/playlist?list=$playlistId';
  final youtubeWebUri = Uri.parse('https://$url');
  if (kIsWeb || !Platform.isIOS) {
    await launchUrl(youtubeWebUri);
  } else {
    if (await canLaunchUrl(Uri.parse('youtube://$url'))) {
      await launchUrl(
        Uri.parse('youtube://$url'),
        mode: LaunchMode.externalApplication,
      );
    } else {
      if (await canLaunchUrl(youtubeWebUri)) {
        await launchUrl(youtubeWebUri);
      } else {
        throw Exception('Could not launch https://$url');
      }
    }
  }
}
