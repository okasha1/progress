import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int _currentProgress = 10;
  int get currentProgress => _currentProgress;

  int _medalNum = 0;
  int get medalNum => _medalNum;

  // INCREASE THE CURRENT PROGRESS BAR
  void increaseProgress() {
    _currentProgress += 10;
    notifyListeners();
  }

  void increaseMedalNum() {
    _medalNum++;
    notifyListeners();
  }

  List medals = [];
}
