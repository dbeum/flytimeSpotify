import 'package:flutter/material.dart';

class downloadProvider with ChangeNotifier {
  bool isdownload = false;

  void toggledownload() {
    isdownload = !isdownload;
    notifyListeners();
  }
}
