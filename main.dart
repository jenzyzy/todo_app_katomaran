import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';
import 'screens/todo_screen.dart';
import 'screens/task_list_screen.dart';
import 'screens/task_detail_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/privacy_screen.dart';
import 'screens/help_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCJ42p9B-_vhPOFL4cIpzZf-7J5c-8t4nM",
      authDomain: "todoapp2025-807d4.firebaseapp.com",
      projectId: "todoapp2025-807d4",
      storageBucket: "todoapp2025-807d4.appspot.com",
      messagingSenderId: "730589452913",
      appId: "1:730589452913:web:565955040a04f726ea99d0",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Task App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/todo': (context) => const TodoScreen(),
        '/tasks': (context) => const TaskListScreen(),
        '/details': (context) => const TaskDetailScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/privacy': (context) => const PrivacyScreen(),
        '/help': (context) => const HelpScreen(),
      },
    );
  }
}
