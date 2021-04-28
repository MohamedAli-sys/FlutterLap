import 'package:dio/dio.dart';
import 'package:lap/models/todo.dart';

class TodoService {
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> getAllTodo() async {
    List<Todo> todos = [];
    Response resp = await Dio().get(url);
    var data = resp.data;

    data.forEach((e) {
      todos.add(Todo.fromJson(e));
    });
    return todos;
  }
}
