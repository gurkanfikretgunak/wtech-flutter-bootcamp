import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

void loadingPopup() {
  Grock.dialog(builder: (_) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  });
}
