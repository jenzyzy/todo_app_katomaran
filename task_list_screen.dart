import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9C4), // soft yellow
      appBar: AppBar(
        title: Text("📝 My Tasks"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          "All your tasks will appear here!",
          style: TextStyle(fontSize: 26, color: Colors.brown),
        ),
      ),
    );
  }
}
