import 'package:flutter/material.dart';

class passwordVisibilityProvider with ChangeNotifier {
  bool isvisible = true;

  void togglevisibily() {
    isvisible = !isvisible;
    notifyListeners();
  }
}
