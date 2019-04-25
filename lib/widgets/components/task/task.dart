import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../../scoped/tasks.dart';
import '../../../models/task.dart';

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
            return TaskListCards(model, index);
          },
          itemCount: model.tasks.length,
        );
      },
    );
  }
}

class TaskListCards extends StatelessWidget {
  final TasksModel _model;
  final int _index;

  TaskListCards(this._model, this._index);

  @override
  Widget  build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: Border(right: BorderSide(width: 4.0, color: Colors.green[200])),
      child: InkWell(
        onTap: () {
          print("tapped");
        },
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child:
                  Text(
                      _model.tasks[_index].title,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)
                  ),
              ),
              Text(_model.tasks[_index].description),
            ],
          ),
        ),
      ),
    );
    //Text(_model.tasks[_index].title, style: TextStyle(fontSize: 22.0));
  }
}