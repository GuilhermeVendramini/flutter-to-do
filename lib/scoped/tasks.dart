import 'package:scoped_model/scoped_model.dart';
import '../models/task.dart';

class TasksModel extends Model {
  List<Task> _tasks = [
    Task(title: 'Teste', description: 'Desc teste'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
    Task(title: 'Teste 2', description: 'Desc teste 2'),
  ];

  List<Task> get tasks {
    return List.from(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
  }

}
