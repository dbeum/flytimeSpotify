import 'package:flutter/widgets.dart';

class Expand with ChangeNotifier {
  bool isExpanded = false;

  void toggleExpand() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
