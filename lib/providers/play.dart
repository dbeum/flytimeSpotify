import 'package:flutter/widgets.dart';

class PlayProvider with ChangeNotifier {
  bool isplayed = false;

  void togglePlay() {
    isplayed = !isplayed;
    notifyListeners();
  }
}
