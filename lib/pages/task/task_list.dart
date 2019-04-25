import 'package:flutter/material.dart';
import '../../widgets/components/task/task_list.dart';

class TaskListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TaskListPageState();
  }
}

class _TaskListPageState extends State<TaskListPage> {
  bool _value = false;
  String _label = 'OFF';

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
                Text(_label, style: TextStyle(color: Colors.black)),
                Switch(
                  value: _value,
                  onChanged: (bool value) {
                    setState(() {
                      (value)?_label = 'ON':_label = 'OFF';
                      _value = value;
                    });
                  },
                  activeColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            /// ---------------------------------- //
            Column(
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.center,
                  child:
                  CircleAvatar(backgroundImage:  AssetImage('assets/images/avatar.png'), radius: 60.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Hello, Anne!'),
                  ),
                ),
              ],
            ),
            Expanded(
              child:  TasksList(),
            ),
            /// ---------------------------------- //
          ],
        ),
      ),
    );
  }
}
