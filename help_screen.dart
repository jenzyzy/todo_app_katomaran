import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Help")),
      body: ListView(
        children: const [
          ListTile(title: Text("How to use the app")),
          ListTile(title: Text("Contact support")),
        ],
      ),
    );
  }
}
