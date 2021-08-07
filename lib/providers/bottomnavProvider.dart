import 'package:flutter/material.dart';

class WidgetIndex extends ChangeNotifier {
  int indexWidget = 0;
  int get count => indexWidget;
  // ignore: missing_return
  int changevalue(int indexWid) {
    // print(indexWid);
    indexWidget = indexWid;
    notifyListeners();
    // return indexWidget;
  }
}
