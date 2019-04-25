import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../../scoped/tasks.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TasksModel>(
      builder: (BuildContext context, Widget child, TasksModel model) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Text(model.tasks[index].title, style: TextStyle(fontSize: 22.0));
              //Text(model.tasks[index].title);
          },
          itemCount: model.tasks.length,
        );
      },
    );
  }
}
