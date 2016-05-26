//import 'dart:async';
import 'package:angular2/core.dart' show Injectable;
import '../models/todo.dart';

@Injectable()
class TodoService {
  Todo add(Todo todo) {
    return todo;
  }

  int delete(int index) {
    return index;
  }
}
