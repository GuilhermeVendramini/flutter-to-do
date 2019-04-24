import 'package:flutter/material.dart';


class Email extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'E-MAIL',
        filled: true,
        fillColor: Colors.white
      ),
      validator: (String value) {
        if (value.isEmpty ||
            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
          return 'Please enter a valid email';
        }
      },
    );
  }
}

class Password extends StatelessWidget {

  @override
  Widget  build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'PASSWORD',
        filled: true,
        fillColor: Colors.white
      ),
      validator: (String value) {
        if (value.isEmpty || value.length < 6) {
          return 'Password invalid';
        }
      },
    );
  }
}