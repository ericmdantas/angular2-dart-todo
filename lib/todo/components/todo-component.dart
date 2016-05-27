import 'package:angular2/core.dart' show Component;
import '../models/todo.dart';
import '../services/todo_service.dart';

@Component(
  selector: 'todo',
  providers: const [Todo, TodoService],
  templateUrl: "../templates/todo.html",
  styleUrls: const ["../styles/todo.css"]
)
class TodoCmp {
  final String name = 'ng2do';
  Todo todo = new Todo();
  List<Todo> todos = [];
  TodoService _todoService;

  TodoCmp(Todo todo, TodoService _todoService) {
    this.todo = todo;
    this._todoService = _todoService;
  }

  void add(Todo t) {
    if (t.msg.length == 0) {
      return;
    }

    this.todos.add(this._todoService.add(t));
    this.todo = new Todo();
  }

  void delete(int index) {
    this.todos.removeAt(this._todoService.remove(index));
  }
}
