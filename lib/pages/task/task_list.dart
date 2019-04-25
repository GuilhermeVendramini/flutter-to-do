import 'package:flutter/material.dart';
import '../../widgets/components/task/task_list.dart';
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
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  alignment: FractionalOffset.center,
                  child:
                  CircleAvatar(backgroundImage:  AssetImage('assets/images/avatar.png'), radius: 60.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Hello, Janne!', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  child: Text('Your resume today'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                        Border.all(color: Colors.red[100], width: 1),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text('To do'),
                        Text('10', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.green[100], width: 1),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text('Done'),
                        Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            TasksList(),
          ],
        ),
      ),
    );
  }
}
