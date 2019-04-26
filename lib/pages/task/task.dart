import 'package:flutter/material.dart';
//import '../../widgets/components/task/task.dart';

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
            SliverAppBar(
              automaticallyImplyLeading: true,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    ),);
  }
}
