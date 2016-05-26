import 'package:angular2/core.dart';
import '../models/todo.dart';

@Injectable()
class TodoService {
  List<Todo> todos = [];

  add(Todo todo) async {
    this.todos.add(todo);
    return this.todos;
  }

  delete(int index) async {
    this.todos.removeAt(index);
    return this.todos;
  }
}
