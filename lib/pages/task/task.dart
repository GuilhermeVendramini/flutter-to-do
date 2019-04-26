import 'package:flutter/material.dart';
import '../../widgets/components/task/task.dart';

class TaskPage extends StatefulWidget {
  final int taskIndex;
  TaskPage(this.taskIndex);

  @override
  State<StatefulWidget> createState() {
    return _TaskPage();
  }
}

class _TaskPage extends State<TaskPage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async {
      Navigator.pushReplacementNamed(context, '/task-list');
    },
    child: Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            TaskPageHeader(),
          ];
        },
        body: ListView(
          children: <Widget>[
            TaskPageBox(),
            SizedBox(
              height: 10.0,
            ),
            TaskListItem(),
          ],
        ),
      ),
    ),);
  }
}
