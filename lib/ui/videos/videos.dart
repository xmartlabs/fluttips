import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _VideosContentScreen();
  }
}

class _VideosContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('VIDEOS'));
  }
}
