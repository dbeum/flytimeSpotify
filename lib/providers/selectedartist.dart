import 'package:flutter/material.dart';

class Selectedartistprovider with ChangeNotifier {
  bool isselected = false;
  bool isselected2 = false;
  bool isselected3 = false;
  bool isselected4 = false;
  bool isselected5 = false;
  bool isselected6 = false;
  bool isselected7 = false;
  bool isselected8 = false;
  bool isselected9 = false;
  bool isselected10 = false;
  bool isselected11 = false;
  bool isselected12 = false;
  bool isselected13 = false;
  bool isselected14 = false;
  bool isselected15 = false;
  bool isselected16 = false;
  bool isselected17 = false;
  bool isselected18 = false;

  void toggleSelected() {
    isselected = !isselected;

    notifyListeners();
  }

  void toggleSelected2() {
    isselected2 = !isselected2;

    notifyListeners();
  }

  void toggleSelected3() {
    isselected3 = !isselected3;

    notifyListeners();
  }

  void toggleSelected4() {
    isselected4 = !isselected4;

    notifyListeners();
  }

  void toggleSelected5() {
    isselected5 = !isselected5;

    notifyListeners();
  }

  void toggleSelected6() {
    isselected6 = !isselected6;

    notifyListeners();
  }

  void toggleSelected7() {
    isselected7 = !isselected7;

    notifyListeners();
  }

  void toggleSelected8() {
    isselected8 = !isselected8;

    notifyListeners();
  }

  void toggleSelected9() {
    isselected9 = !isselected9;

    notifyListeners();
  }

  void toggleSelected10() {
    isselected10 = !isselected10;

    notifyListeners();
  }

  void toggleSelected11() {
    isselected11 = !isselected11;

    notifyListeners();
  }

  void toggleSelected12() {
    isselected12 = !isselected12;

    notifyListeners();
  }

  void toggleSelected13() {
    isselected13 = !isselected13;

    notifyListeners();
  }

  void toggleSelected14() {
    isselected14 = !isselected14;

    notifyListeners();
  }

  void toggleSelected15() {
    isselected15 = !isselected15;

    notifyListeners();
  }

  void toggleSelected16() {
    isselected16 = !isselected16;

    notifyListeners();
  }

  void toggleSelected17() {
    isselected17 = !isselected17;

    notifyListeners();
  }

  void toggleSelected18() {
    isselected18 = !isselected18;

    notifyListeners();
  }

  int get selectedCount {
    int count = 0;
    if (isselected) count++;
    if (isselected2) count++;
    if (isselected3) count++;
    if (isselected4) count++;
    if (isselected5) count++;
    if (isselected6) count++;
    if (isselected7) count++;
    if (isselected8) count++;
    if (isselected9) count++;
    if (isselected10) count++;
    if (isselected11) count++;
    if (isselected12) count++;
    if (isselected13) count++;
    if (isselected14) count++;
    if (isselected15) count++;
    if (isselected16) count++;
    if (isselected17) count++;
    if (isselected18) count++;
    return count;
  }
}
