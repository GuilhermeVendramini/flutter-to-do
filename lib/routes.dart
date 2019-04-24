import 'package:flutter/material.dart';
import './pages/user/login.dart';

class Routes extends StatelessWidget {

  @override
  Widget  build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      '/login': (BuildContext context) => new LoginPage(),
    };
    return MaterialApp(
      title: "To do",
      initialRoute: '/login',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.deepPurple,
          buttonColor: Colors.deepPurple
      ),
      routes: routes,
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginPage()
        );
      },
    );
  }
}