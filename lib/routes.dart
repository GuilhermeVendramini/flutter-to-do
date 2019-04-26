import 'package:flutter/material.dart';
import './pages/user/login.dart';
import './pages/task/task_list.dart';
import './pages/task/task.dart';

class Routes {

  getHome() {
    return '/';
  }

  getOnGenerateRoute(RouteSettings settings) {
    final List<String> pathElements = settings.name.split('/');
    if (pathElements[0] != '') {
      return null;
    }
    if (pathElements[1] == 'task') {
      final int index = int.parse(pathElements[2]);
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) =>
            TaskPage(index),
      );
    }
    return null;
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