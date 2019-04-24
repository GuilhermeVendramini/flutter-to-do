import 'package:flutter/material.dart';
import './pages/user/login.dart';

class Routes {

  getHome() {
    return '/';
  }

  getRoutes() {
    Map<String, WidgetBuilder> routes;
    routes = {
      '/': (BuildContext context) => new LoginPage(),
    };
    return routes;
  }

}