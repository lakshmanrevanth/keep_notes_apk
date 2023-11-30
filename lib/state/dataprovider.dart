import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataProvider extends ChangeNotifier {
  var data = 0;
  void upgrade() {
    data = data + 1;
    notifyListeners();
  }
}
