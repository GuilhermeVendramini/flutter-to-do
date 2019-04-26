import 'package:scoped_model/scoped_model.dart';
import '../models/task.dart';

class TasksModel extends Model {
  List<Task> _tasks = [
    Task(id: 1, title: 'Place 1', description: 'Description of the place 1'),
    Task(id: 2, title: 'Place 2', description: 'Description of the place 2'),
    Task(id: 3, title: 'Place 3', description: 'Description of the place 3'),
    Task(id: 4, title: 'Place 4', description: 'Description of the place 4'),
    Task(id: 5, title: 'Place 5', description: 'Description of the place 5'),
    Task(id: 6, title: 'Place 6', description: 'Description of the place 6'),
    Task(id: 7, title: 'Place 7', description: 'Description of the place 7'),
    Task(id: 8, title: 'Place 8', description: 'Description of the place 8'),
    Task(id: 9, title: 'Place 9', description: 'Description of the place 9'),
    Task(id: 10, title: 'Place 10', description: 'Description of the place 10'),
    Task(id: 11, title: 'Place 11', description: 'Description of the place 11'),
    Task(id: 12, title: 'Place 12', description: 'Description of the place 12'),
    Task(id: 13, title: 'Place 13', description: 'Description of the place 13'),
    Task(id: 14, title: 'Place 14', description: 'Description of the place 14'),
    Task(id: 15, title: 'Place 15', description: 'Description of the place 15'),
    Task(id: 16, title: 'Place 16', description: 'Description of the place 16'),
    Task(id: 17, title: 'Place 17', description: 'Description of the place 17'),
    Task(id: 18, title: 'Place 18', description: 'Description of the place 18'),
    Task(id: 19, title: 'Place 19', description: 'Description of the place 19'),
    Task(id: 20, title: 'Place 20', description: 'Description of the place 20'),
  ];

  List<Task> get tasks {
    return List.from(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
  }

}
