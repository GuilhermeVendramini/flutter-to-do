import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../../scoped/tasks.dart';

class TaskListHeader extends StatelessWidget {

  @override
  Widget  build(BuildContext context) {
    return Column(
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
    );
  }
}

class TaskListBoxes extends StatelessWidget {

  @override
  Widget  build(BuildContext context) {
    return Row(
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
    );
  }
}

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TasksModel>(
      builder: (BuildContext context, Widget child, TasksModel model) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
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
