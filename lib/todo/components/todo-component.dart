import 'package:angular2/core.dart';
import 'dart:html';
import '../models/todo.dart';

@Component(
    selector: 'todo',
    providers: const [Todo],
    templateUrl: "../templates/todo.html",
    styleUrls: const ["../styles/todo.css"]
  )
class TodoCmp {
  final String name = 'ng2do';
  Todo todo = new Todo('');
  List<Todo> todos = [];

  add(Todo t) {
      this.todos.add(t);
      this.todo = new Todo('');
  }
}
