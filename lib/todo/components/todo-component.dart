import 'package:angular2/core.dart';
import '../models/todo.dart';

@Component(
    selector: 'todo',
    providers: const [Todo],
    templateUrl: "../templates/todo.html",
    styleUrls: const ["../styles/todo.css"]
  )
class TodoCmp {
  String name = 'ng2do';
  String msg = '';
  List<Todo> todos = [];

  go() {
      this.todos.add("yo!");
  }
}
