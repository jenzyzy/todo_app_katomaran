import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleAuthProvider googleProvider = GoogleAuthProvider();
      googleProvider.setCustomParameters({'prompt': 'select_account'});

      // ✅ Works only in Flutter Web
      final userCredential = await FirebaseAuth.instance.signInWithPopup(googleProvider);
      final user = userCredential.user;

      if (user != null) {
        print("✅ Firebase Sign-In Success: ${user.email}");
      } else {
        print("❌ Firebase returned null user");
      }

      return user;
    } catch (e) {
      print("🔥 Firebase Sign-In Exception: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
