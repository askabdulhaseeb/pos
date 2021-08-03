import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

class CustomWindowSize {
  static Future<dynamic> isFullScreen() async => DesktopWindow.getFullScreen();
  static Future<bool> setCustomWindowSize({
    double minWidth = 500,
    double minHeight = 500,
    double maxWidth = 800,
    double maxHeight = 800,
  }) async {
    try {
      // ignore: parameter_assignments
      if (minHeight < 500) minHeight = 500;
      // ignore: parameter_assignments
      if (minWidth < 500) minWidth = 500;
      // ignore: parameter_assignments
      if (minHeight > maxHeight) maxHeight = minHeight;
      // ignore: parameter_assignments
      if (minWidth > maxWidth) maxWidth = minWidth;
      await DesktopWindow.setMinWindowSize(Size(minWidth, minHeight));
      await DesktopWindow.setMaxWindowSize(Size(maxWidth, maxHeight));
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> setFullScreen() async {
    try {
      await DesktopWindow.setFullScreen(true);
      return true;
    } catch (e) {
      return false;
    }
  }
}
