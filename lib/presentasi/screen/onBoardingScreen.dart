// lib/screens/onboarding_screen.dart
import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:flutter/material.dart';
// import 'package:bittaqwa_app/presentasi/screen/loginScreen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.colorPrimary,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 🍽️ Gambar Piring Salad
                Image.asset(
                  'assets/images/onBoardingPlate.png',
                  width: 240,
                  height: 240,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 40),

                // 📝 Teks Utama
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Kenali ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.colorWhite,
                          fontFamily: 'MontserratExtraBold',
                        ),
                      ),
                      TextSpan(
                        text: 'dirimu\n',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.colorAccent,
                          fontFamily: 'MontserratExtraBold',
                        ),
                      ),
                      TextSpan(
                        text: 'Kenali ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.colorWhite,
                          fontFamily: 'MontserratExtraBold',
                        ),
                      ),
                      TextSpan(
                        text: 'masalahmu',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.colorPrimaryDark,
                          fontFamily: 'MontserratExtraBold',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),

                // 💬 Subjudul

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Mulai dari ",
                        style: TextStyle(
                          color: ColorConstant.colorWhite,
                          fontSize: 16,
                          fontFamily: 'MontserratRegular',
                        ),
                      ),
                      TextSpan(
                        text: "piringmu!",
                        style: TextStyle(
                          color: ColorConstant.colorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MontserratSemiBold',
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 150),

                // 🟢 Button "Ayo Mulai!"
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'login');
                      // atau jika pakai route name:
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2E5D3A), // hijau tua
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                    child: Text('Ayo Mulai!'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
