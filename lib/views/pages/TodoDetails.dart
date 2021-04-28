import 'package:flutter/material.dart';

class TodoDetails extends StatefulWidget {
  final String title;
  final String userId;
  final bool completed;
  TodoDetails({this.title, this.userId, this.completed});
  @override
  _TodoDetailsState createState() => _TodoDetailsState();
}

class _TodoDetailsState extends State<TodoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                widget.userId,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                widget.completed.toString(),
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
