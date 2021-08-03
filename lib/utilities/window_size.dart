import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

class CustomWindowSize {
  static Future<bool> setCustomWindowSize({
    double minWidth = 400,
    double minHeight = 400,
    double maxWidth = 800,
    double maxHeight = 800,
  }) async {
    try {
      await DesktopWindow.setMinWindowSize(Size(minWidth, minHeight));
      await DesktopWindow.setMaxWindowSize(Size(maxWidth, maxHeight));
      return true;
    } catch (e) {
      return false;
    }
  }
}
