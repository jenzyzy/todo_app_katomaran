import 'package:flutter/material.dart';
import 'todo_screen.dart';
import 'task_list_screen.dart';
import 'task_detail_screen.dart';
import 'profile_screen.dart';

class MainNavScreen extends StatefulWidget {
  final String? userName;

  const MainNavScreen({super.key, this.userName});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages.addAll([
      TodoScreen(userName: widget.userName),
      const TaskListScreen(),
      const TaskDetailScreen(),
      const ProfileScreen(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
