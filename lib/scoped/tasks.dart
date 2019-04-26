import 'package:scoped_model/scoped_model.dart';
import '../models/task.dart';

class TasksModel extends Model {
  int _selectTaskIndex;

  List<Task> _tasks = [
    Task(id: 1, title: 'Place 1', description: 'Description of the place 1', image: 'assets/images/room.jpg'),
    Task(id: 2, title: 'Place 2', description: 'Description of the place 2', image: 'assets/images/room.jpg'),
    Task(id: 3, title: 'Place 3', description: 'Description of the place 3', image: 'assets/images/room.jpg'),
    Task(id: 4, title: 'Place 4', description: 'Description of the place 4', image: 'assets/images/room.jpg'),
    Task(id: 5, title: 'Place 5', description: 'Description of the place 5', image: 'assets/images/room.jpg'),
    Task(id: 6, title: 'Place 6', description: 'Description of the place 6', image: 'assets/images/room.jpg'),
    Task(id: 7, title: 'Place 7', description: 'Description of the place 7', image: 'assets/images/room.jpg'),
    Task(id: 8, title: 'Place 8', description: 'Description of the place 8', image: 'assets/images/room.jpg'),
    Task(id: 9, title: 'Place 9', description: 'Description of the place 9', image: 'assets/images/room.jpg'),
    Task(id: 10, title: 'Place 10', description: 'Description of the place 10', image: 'assets/images/room.jpg'),
    Task(id: 11, title: 'Place 11', description: 'Description of the place 11', image: 'assets/images/room.jpg'),
    Task(id: 12, title: 'Place 12', description: 'Description of the place 12', image: 'assets/images/room.jpg'),
    Task(id: 13, title: 'Place 13', description: 'Description of the place 13', image: 'assets/images/room.jpg'),
    Task(id: 14, title: 'Place 14', description: 'Description of the place 14', image: 'assets/images/room.jpg'),
    Task(id: 15, title: 'Place 15', description: 'Description of the place 15', image: 'assets/images/room.jpg'),
    Task(id: 16, title: 'Place 16', description: 'Description of the place 16', image: 'assets/images/room.jpg'),
    Task(id: 17, title: 'Place 17', description: 'Description of the place 17', image: 'assets/images/room.jpg'),
    Task(id: 18, title: 'Place 18', description: 'Description of the place 18', image: 'assets/images/room.jpg'),
    Task(id: 19, title: 'Place 19', description: 'Description of the place 19', image: 'assets/images/room.jpg'),
    Task(id: 20, title: 'Place 20', description: 'Description of the place 20', image: 'assets/images/room.jpg'),
  ];

  List<Task> get tasks {
    return List.from(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
  }

  void selectTask(int index) {
    _selectTaskIndex = index;
  }

  int get selectedTaskIndex {
    return _selectTaskIndex;
  }

  Task get task {
    if (_selectTaskIndex == null) {
      return null;
    }
    return _tasks[selectedTaskIndex];
  }



}
