import 'package:flutter/material.dart';
import 'package:lap/views/pages/TodoDetails.dart';

class MyCard extends StatefulWidget {
  final String title;
  final bool completed;
  final int userId;
  MyCard({this.title, this.completed, this.userId});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TodoDetails(
                      title: widget.title,
                      userId: '${widget.userId}',
                      completed: widget.completed,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(widget.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
