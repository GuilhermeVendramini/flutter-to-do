import 'package:flutter/material.dart';
import 'package:flutter_to_do/widgets/components/user/login.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/mark.png', width: 100.0,),
                  SizedBox(
                    height: 40.0,
                  ),
                  Login(),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text("Don't have an account? Sign up"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
