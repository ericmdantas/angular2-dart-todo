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
  Todo todo = new Todo('');
  List<Todo> todos = [];
  TodoService _todoService;

  add(Todo t) async {
      this.todos = await this._todoService.add(t);
      this.todo = new Todo('');
  }

  delete(int index) async {
    this.todos = await this._todoService.delete(index);
  }
}
