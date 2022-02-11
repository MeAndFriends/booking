import 'package:booking/core/base/base_view_model.dart';
import 'package:booking/widgets/animations/slide_right_route.dart';
import 'package:flutter/material.dart';

import '../../core/services/navigator_service.dart';
import '../hotel_list/hotel_list_view.dart';

class LoginViewModel extends BaseViewModel {
  NavigatorService navigatorService;
  LoginViewModel({@required this.navigatorService});

  String _username;
  String get username => this._username;
  set username(String value) {
    _username = value;
    notifyListeners();
  }

  String _password;
  String get password => _password;
  set password(String value) {
    _password = value;
    notifyListeners();
  }

  void login() {
    navigatorService
        .navigateToPage(SlideRightRoute(page: const HotelListView()));
  }
  // Add ViewModel specific code here
}
