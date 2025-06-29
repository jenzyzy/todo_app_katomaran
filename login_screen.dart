import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'main_nav_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final auth = AuthService();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Login",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "🚀 Todo App",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.person_add_alt_1,
                size: 80,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 16),
              const Text(
                "Welcome, new user!\nSign in to start managing your tasks.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 40),

              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 36, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        setState(() => isLoading = true);
                        try {
                          final user = await auth.signInWithGoogle();
                          setState(() => isLoading = false);

                          if (user != null) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainNavScreen(
                                  userName: user.displayName,
                                ),
                              ),
                            );
                          }
                        } catch (e) {
                          setState(() => isLoading = false);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login error: $e")),
                          );
                        }
                      },
                      child: const Text(
                        "Sign in with Google",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black, // ✅ Black text
                        ),
                      ),
                    ),
              const SizedBox(height: 30),

              // ✅ Bottom icon row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/settings'),
                    child: Column(
                      children: const [
                        Icon(Icons.settings, color: Colors.grey),
                        SizedBox(height: 4),
                        Text('Settings', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/privacy'),
                    child: Column(
                      children: const [
                        Icon(Icons.privacy_tip, color: Colors.grey),
                        SizedBox(height: 4),
                        Text('Privacy', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/help'),
                    child: Column(
                      children: const [
                        Icon(Icons.help_outline, color: Colors.grey),
                        SizedBox(height: 4),
                        Text('Help', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
