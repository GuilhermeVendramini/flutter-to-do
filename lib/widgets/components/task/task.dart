import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../../scoped/tasks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
              Border.all(color: Colors.red[400], width: 4),
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
              Border.all(color: Colors.green[400], width: 4),
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
            return Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: TaskListCards(model, index),
            );
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
    return Slidable(
      delegate: new SlidableDrawerDelegate(),
      actionExtentRatio: 0.25,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(width: 3.0, color: Colors.teal),
            bottom: BorderSide(width: 1.0, color: Colors.teal),
          ),
        ),
        margin: EdgeInsets.only(right: 0.0, top: 0.0, bottom: 00.0),
        child: InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/task/' + _index.toString());
            _model.selectTask(_index);
          },
          child: Container(
            child: ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  _model.tasks[_index].title,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)
                ),
              ),
              subtitle: Text(_model.tasks[_index].description),
            ),
          ),
        ),
        //),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.teal,
          icon: Icons.more_horiz,
          onTap: () {
            Navigator.pushReplacementNamed(context, '/task/' + _index.toString());
            _model.selectTask(_index);
          },
        ),
        IconSlideAction(
          caption: 'Report',
          color: Colors.red[400],
          icon: Icons.announcement,
          onTap: () => {},
        ),
        IconSlideAction(
          caption: 'Interdict',
          color: Colors.yellow[400],
          icon: Icons.block,
          onTap: () => {},
        ),
      ],
    );
  }
}

class TaskPageHeader extends StatelessWidget {

  @override
  Widget  build(BuildContext context) {
    return ScopedModelDescendant<TasksModel>(
      builder: (BuildContext context, Widget child, TasksModel model) {
        return SliverAppBar(
          automaticallyImplyLeading: true,
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(model.task.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              )
            ),
            background: Image.asset(
              model.task.image,
              fit: BoxFit.cover,
              color: Colors.black,
              colorBlendMode: BlendMode.softLight,
            ),
          ),
        );
      }
    );
  }
}

class TaskPageBox extends StatelessWidget {

  @override
  Widget  build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Icon(Icons.beenhere, size: 50.0, color: Colors.green[400]),
            Text('Conclude', style: TextStyle(fontWeight: FontWeight.bold)),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Icon(Icons.announcement, size: 50.0, color:  Colors.red[400]),
            Text('Report', style: TextStyle(fontWeight: FontWeight.bold)),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Icon(Icons.block, size: 50.0, color: Colors.yellow[400]),
            Text('Interdict', style: TextStyle(fontWeight: FontWeight.bold)),
          ],),
        ),
      ],
    );
  }
}