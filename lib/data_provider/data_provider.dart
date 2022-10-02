import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  double _currentPage = 0;
  bool _stayOnPage = false;
  double previousPage = 0;
  bool hasScrolled = false;
  List<Color> _desktopColorDrawItem = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  bool get hasScroll {
    return hasScrolled;
  }

  void updateCurrentPage(double currentPage) {
    hasScrolled = false;
    previousPage = _currentPage;
    _currentPage = currentPage;
    if (previousPage != _currentPage) {
      hasScrolled = true;
    }
    notifyListeners();
  }

  void updateStayOnPage(double pageNumber) {
    print('currentpage is $pageNumber');
    _desktopColorDrawItem = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];
    // if (pageNumber <= getCurrentPage && getCurrentPage < pageNumber + 1) {
    updateColor(pageNumber);
    notifyListeners();
    // }
  }

  bool get stayOnPage {
    return _stayOnPage;
  }

  double get getCurrentPage {
    return _currentPage;
  }

  Color getColor(int index) {
    return _desktopColorDrawItem[index];
  }

  void updateColor(double pageNumber) {
    int i = pageNumber.toInt();

    _desktopColorDrawItem[i] = Color(0xFF69d6c5);
    notifyListeners();
  }

  void resetColorDrawer() {
    _desktopColorDrawItem = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];
    notifyListeners();
  }
}
