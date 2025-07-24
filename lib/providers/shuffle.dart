import 'package:flutter/widgets.dart';

class ShuffleProvider with ChangeNotifier {
  bool isshuffled = false;

  void toggleshuffle() {
    isshuffled = !isshuffled;
    notifyListeners();
  }
}
