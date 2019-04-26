import 'package:flutter/material.dart';
import './routes.dart';
import 'package:scoped_model/scoped_model.dart';
import './scoped/tasks.dart';
//import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  //debugPaintBaselinesEnabled = true;
  //debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Routes routes = new Routes();
    return ScopedModel<TasksModel> (
      model: TasksModel(),
      child:
      MaterialApp(
        title: "To do",
        initialRoute: routes.getHome(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.teal,
          accentColor: Colors.black,
          buttonColor: Colors.teal[400],
        ),
        routes: routes.getRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          return routes.getOnGenerateRoute(settings);
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => routes.getHome()
          );
        },
      ),
    );
  }
}
