import 'package:flutter/material.dart';
import '../ui_elements/form.dart';

class Login extends StatelessWidget{

  @override
  Widget  build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;

    return SingleChildScrollView(
      child: Container(
        width: targetWidth,
        child: Form(
          child: Column(
            children: <Widget>[
              Email(),
              SizedBox(
                height: 10.0,
              ),
              Password(),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                textColor: Colors.white,
                child: Text('LOGIN'),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}