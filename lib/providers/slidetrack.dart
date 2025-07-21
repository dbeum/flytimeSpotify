import 'package:flutter/widgets.dart';

class SlidetrackProvider with ChangeNotifier {
  bool isslide = false;
  void slidetrack() {
    isslide = !isslide;
    notifyListeners();
  }
}
