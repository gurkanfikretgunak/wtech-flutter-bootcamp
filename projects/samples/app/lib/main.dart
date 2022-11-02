import 'package:flutter/material.dart';

import 'core/app.dart';

void main() {
  runApp(const App());
}

IconButton _buildPlayPauseButton() {
  return IconButton(
    icon:
    (widget.isPlaying)
        ? Icon(Icons.pause)
        : Icon(Icons.play_arrow),
    color: Colors.white,
    onPressed: () {
      if (widget.onPlayStateChanged != null) {
        widget.onPlayStateChanged(!widget.isPlaying);
      }
    },
  );
}