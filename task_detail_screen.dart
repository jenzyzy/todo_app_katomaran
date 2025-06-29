import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC8E6C9), // light green
      appBar: AppBar(
        title: Text("📌 Task Details"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Details for selected task show here.",
          style: TextStyle(fontSize: 26, color: Colors.teal),
        ),
      ),
    );
  }
}
