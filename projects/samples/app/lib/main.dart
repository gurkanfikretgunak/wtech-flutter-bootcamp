import 'package:flutter/material.dart';

import 'core/app.dart';
import 'BottomNavigationBar.dart';
void main() {
  runApp(const AppBarApp());
}

IconButton _buildPlayPauseButton() {
  return IconButton(
    icon: (widget.isPlaying) ? Icon(Icons.pause) : Icon(Icons.play_arrow),
    color: Colors.white,
    onPressed: () {
      if (widget.onPlayStateChanged != null) {
        widget.onPlayStateChanged(!widget.isPlaying);
      }
    },
  );
}
