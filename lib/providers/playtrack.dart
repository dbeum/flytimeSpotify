import 'package:flutter/material.dart';

class PlaytrackProvider with ChangeNotifier {
  bool isplaytrack = false;

  void playtrack() {
    isplaytrack = !isplaytrack;
    notifyListeners();
  }
}
