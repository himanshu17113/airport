import 'package:flutter/material.dart';

class MyChangeNotifier extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  String _eventstatus = "";
  String get eventstatus => _eventstatus;

  void updateEvent(int counter) {
    _counter = counter;
    notifyListeners();
  }
}
