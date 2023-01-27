import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

Future<void> openYoutubePlaylist(String playlistId) async {
  final url = 'www.youtube.com/playlist?list=$playlistId';
  final youtubeWebUri = Uri.parse('https://$url');
  if (Platform.isIOS) {
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
  } else {
    await launchUrl(youtubeWebUri);
  }
}
