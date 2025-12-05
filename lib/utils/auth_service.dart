// lib/utils/auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Helper untuk ambil instance SharedPreferences
  Future<SharedPreferences> _getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  // Cek apakah sudah login
  Future<bool> isLoggedIn() async {
    final prefs = await _getPrefs();
    return prefs.getBool('is_logged_in') ?? false;
  }

  // Simpan status login
  Future<void> setLoggedIn(bool value) async {
    final prefs = await _getPrefs();
    await prefs.setBool('is_logged_in', value);
  }

  // Login dengan email & password
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await setLoggedIn(true);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw Exception('Email atau kata sandi salah');
      } else {
        throw Exception('Terjadi kesalahan: ${e.message}');
      }
    }
  }

  // Daftar akun baru
  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await setLoggedIn(true);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw Exception('Email sudah terdaftar');
      } else if (e.code == 'invalid-email') {
        throw Exception('Format email tidak valid');
      } else if (e.code == 'weak-password') {
        throw Exception('Kata sandi minimal 6 karakter');
      } else {
        throw Exception('Gagal mendaftar: ${e.message}');
      }
    }
  }

  // Logout
  Future<void> signOut() async {
    await _auth.signOut();
    await setLoggedIn(false);
  }
}
