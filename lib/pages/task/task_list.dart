import 'package:flutter/material.dart';
import '../../widgets/components/login.dart';

class TaskListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TaskListPageState();
  }
}

class _TaskListPageState extends State<TaskListPage> {
  bool _value = false;
  void _onChanged(bool value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('TO DO', style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text('ON', style: TextStyle(color: Colors.black)),
                Switch(
                  value: _value,
                  onChanged: _onChanged,
                  activeColor: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
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
                    height: 10.0,
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
