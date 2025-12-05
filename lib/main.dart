import 'package:bittaqwa_app/presentasi/screen/KalkulatorBMIScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/MateriListScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/QuizListScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/dashboard_screen.dart';
import 'package:bittaqwa_app/presentasi/screen/Resepscreen.dart';
import 'package:bittaqwa_app/presentasi/screen/OlahragaScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/KalkulatorScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/loginScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/onBoardingScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/signUpScreen.dart';
import 'package:bittaqwa_app/presentasi/screen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ Perbaiki typo: tambahkan ()
  await initializeDateFormatting("id_ID", null);

  // ✅ Cek apakah user sudah login
  final prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('is_logged_in') ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bittaqwa App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isLoggedIn ? const DashboardScreen() : const OnboardingScreen(),
      routes: {
        // '/': (context) => const OnboardingScreen(),
        'login': (context) => const LoginScreen(),
        'signup': (context) => const SignupScreen(),
        'main': (context) => const DashboardScreen(),
        'profile': (context) => const ProfileScreen(),
        'resep': (context) => const Resepscreen(),
        'kalkulator': (context) => const Kalkulatorscreen(),
        'kalkulatorBMI': (context) => const KalkulatorBMIScreen(),
        'quiz': (context) => const QuizListScreen(),
        'materi': (context) => const MateriListScreen(),
        'olahraga': (context) => const OlahragaScreen(),
      },
    );
  }
}
