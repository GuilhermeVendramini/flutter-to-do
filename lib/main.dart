import 'package:flutter/material.dart';
import './routes.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
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
    return MaterialApp(
      title: "To do",
      initialRoute: routes.getHome(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.teal,
        accentColor: Colors.white,
        buttonColor: Colors.teal[400],
      ),
      routes: routes.getRoutes(),
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => routes.getHome()
        );
      },
    );
  }
}
