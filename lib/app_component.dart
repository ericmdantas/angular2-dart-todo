import 'package:angular2/core.dart';

@Component(
    selector: 'todo',
    template: '''
      <div class="todo-container">
        <h2 class="ng2do">ng2do</h2>

        <div class="todo-form-container">
          <form>
            <input type="text" />
          </form>
        </div>
      </div>
    ''')
class AppComponent {}
