import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Privacy Policy")),
      body: ListView(
        children: const [
          ListTile(title: Text("We don’t share your data")),
          ListTile(title: Text("End-to-end encryption")),
        ],
      ),
    );
  }
}
