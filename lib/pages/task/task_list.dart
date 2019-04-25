import 'package:flutter/material.dart';
import '../../widgets/components/task/task.dart';
//import '../../widgets/helpers/ensure_visible.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: <Widget>[
            TaskListHeader(),
            TaskListBoxes(),
            TasksList(),
          ],
        ),
      ),
    );
  }
}
