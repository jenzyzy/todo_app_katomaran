import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  final String? userName;

  const TodoScreen({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light blue background
      appBar: AppBar(
        title: const Text('Todo Dashboard'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          '👋 Welcome, ${userName ?? 'User'}!\nThis is your Todo Home!',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
      ),
    );
  }
}
