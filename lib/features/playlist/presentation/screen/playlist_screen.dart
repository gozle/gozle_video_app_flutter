import 'package:flutter/material.dart';

class PlaylistScreen extends StatefulWidget {
  static const String routName = 'playlist';
  final String playlistId;
  const PlaylistScreen({super.key, required this.playlistId});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
