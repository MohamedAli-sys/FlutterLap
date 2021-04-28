import 'package:flutter/material.dart';
import 'package:lap/models/todo.dart';
import 'package:lap/services/todoServices.dart';
import 'package:lap/views/widgets/MyCard.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  bool loading = true;
  List<Todo> todo = [];

  getData() async {
    todo = await TodoService().getAllTodo();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Todo List"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Colors.blueAccent[100],
            ))
          : ListView.builder(
              itemCount: todo.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCard(
                  title: todo[index].title,
                  completed: todo[index].completed,
                  userId: todo[index].userId,
                );
              },
            ),
    );
  }
}
