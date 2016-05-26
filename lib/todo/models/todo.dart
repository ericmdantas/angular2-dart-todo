import 'package:angular2/core.dart';

@Injectable()
class Todo {
  String msg = '';
  int id = 0;

  Todo(String m) {
      this.msg = m;
      this.id += 1;
  }
}
