import 'package:flutter/material.dart';
import './pages/user/login.dart';
import './pages/task/task_list.dart';

class Routes {

  getHome() {
    return '/';
  }

  getRoutes() {
    Map<String, WidgetBuilder> routes;
    routes = {
      '/': (BuildContext context) => new LoginPage(),
      '/task-list': (BuildContext context) => new TaskListPage(),
    };
    return routes;
  }

}