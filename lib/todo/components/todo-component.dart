import 'package:angular2/core.dart';
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

  void add(String m) {
    var _t = new Todo();
    _t.msg = m;

    this.todos.add(this._todoService.add(_t));
  }

  void delete(int index) {
    this.todos.removeAt(this._todoService.delete(index));
  }
}
