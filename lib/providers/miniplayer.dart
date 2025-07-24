import 'package:flutter/material.dart';

class MiniPlayerProvider with ChangeNotifier {
  bool _isVisible = true;
  bool _isPlaying = false;

  bool get isVisible => _isVisible;
  bool get isPlaying => _isPlaying;

  void toggleVisibility() {
    _isVisible = !_isVisible;
    notifyListeners();
  }

  void show() {
    _isVisible = true;
    notifyListeners();
  }

  void hide() {
    _isVisible = false;
    notifyListeners();
  }

  void togglePlay() {
    _isPlaying = !_isPlaying;
    notifyListeners();
  }
}
