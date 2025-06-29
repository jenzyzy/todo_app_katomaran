import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFCDD2),
      appBar: AppBar(
        title: const Text("👤 My Profile"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ✅ Profile Image
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              "Your Name",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "your.email@example.com",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
