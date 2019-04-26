import 'package:flutter/material.dart';
import './pages/user/login.dart';
import './pages/task/task_list.dart';
import './pages/task/task_list_items.dart';

class Routes {

  getHome() {
    return '/';
  }

  getRoutes() {
    Map<String, WidgetBuilder> routes;
    routes = {
      '/': (BuildContext context) => new LoginPage(),
      '/task-list': (BuildContext context) => new TaskListPage(),
      '/task-list-items': (BuildContext context) => new TaskListItemsPage(),
    };
    return routes;
  }

}