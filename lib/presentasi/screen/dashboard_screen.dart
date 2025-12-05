import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bittaqwa_app/presentasi/screen/tracker.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour >= 4 && hour < 12) {
      return "Good Morning";
    } else if (hour >= 12 && hour < 18) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  String? _userName;
  String? selectedEmoji; // Menyimpan emoji yang dipilih

  final List<String> emojis = ['😊', '😐', '😔', '😠'];
  final List<String> labels = ['Senang', 'Netral', 'Sedih', 'Marah'];

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final name =
        prefs.getString('user_name') ?? 'Teman'; // fallback jika belum daftar
    if (mounted) {
      setState(() {
        _userName = name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Bagian header dengan emoji selector
    Widget header() {
      return Container(
        height: 280, // sedikit dinaikkan agar ada ruang untuk emoji
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Header.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, 'profile'); // <-- navigasi ke profil
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/icProfile.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${getGreeting()}, ",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'MontserratRegular',
                    ),
                  ),
                  TextSpan(
                    text: _userName ?? '...',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratSemiBold',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "How do you feel today?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'MontserratExtraBold',
              ),
            ),

            const SizedBox(height: 16),

            // --- Emoji Selector ---
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(emojis.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedEmoji = emojis[index];
                    });
                    // Optional: bisa simpan ke database atau kirim ke API
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: selectedEmoji == emojis[index]
                                  ? const Color(0xFFFFB703)
                                  : Colors.white.withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Text(
                            emojis[index],
                            style: const TextStyle(fontSize: 28),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          labels[index],
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 10,
                            fontFamily: 'PoppinsRegular',
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            // --- Akhir Emoji Selector ---
          ],
        ),
      );
    }

    //Kalkulator Nutrisi
    Widget KalkulatorCard() {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'kalkulator'),
        child: Container(
          margin: const EdgeInsets.all(16),
          padding:
              const EdgeInsets.only(left: 16, top: 20, right: 16, bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFA7C957), // hijau muda seperti gambar
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // Satu gambar ikon pisau & garpu gabungan
              Image.asset(
                'assets/images/ic_kalkulator.png', // ganti dengan nama file gambar Anda
                width: 80,
                height: 100,
              ),
              SizedBox(width: 16),
              // Teks
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Kalkulator Kebutuhan ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'MontserratExtraBold',
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Nutrisi',
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'MontserratExtraBold',
                              color: Color(0xFFFF7F2A), // oranye seperti gambar
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Hitung kebutuhan kalori & nutrisi harianmu secara akurat, sesuai usia, tinggi badan, aktivitas, dan tujuanmu!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    //Kalkulator BMI
    Widget KalkulatorBMICard() {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'kalkulatorBMI'),
        child: Container(
          margin:
              const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 16),
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF2E5D3A), // hijau tua seperti gambar
            borderRadius: BorderRadius.circular(16), // sudut lebih lembut
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/icKalkulatorBMI.png',
                width: 90,
                height: 90,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              // 📝 Teks Judul & Deskripsi
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Kalkulator ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'MontserratExtraBold',
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Indeks Massa Tubuh ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'MontserratExtraBold',
                              color: Color(
                                  0xFFA7C957), // hijau muda seperti gambar
                            ),
                          ),
                          TextSpan(
                            text: '(BMI)',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'MontserratExtraBold',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Hitung kebutuhan kalori & nutrisi harianmu secara akurat, sesuai usia, tinggi badan, aktivitas, dan tujuanmu!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.9),
                        height: 1.4, // agar lebih lega
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Bagian lainnya tetap sama
    Widget cardMenus() {
      return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: ColorConstant.colorAccent,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'resep'),
                child: Column(
                  children: [
                    Image.asset('assets/images/icResep.png',
                        width: 95, height: 95, fit: BoxFit.contain),
                    const Text(
                      "Resep resep",
                      style: TextStyle(
                        fontFamily: 'MontserratSemiBold',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'olahraga'),
                child: Column(
                  children: [
                    Image.asset('assets/images/icOlahraga.png',
                        width: 95, height: 95, fit: BoxFit.contain),
                    const Text(
                      "Olahraga",
                      style: TextStyle(
                        fontFamily: 'MontserratSemiBold',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'materi'),
                child: Column(
                  children: [
                    Image.asset('assets/images/icMateri.png',
                        width: 95, height: 95, fit: BoxFit.contain),
                    const Text(
                      "Materi",
                      style: TextStyle(
                        fontFamily: 'MontserratSemiBold',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'quiz'),
                child: Column(
                  children: [
                    Image.asset('assets/images/icQuiz.png',
                        width: 95, height: 95, fit: BoxFit.contain),
                    const Text(
                      "Quiz",
                      style: TextStyle(
                        fontFamily: 'MontserratSemiBold',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            cardMenus(),
            DailyHealthTrackerCard(),
            KalkulatorCard(),
            KalkulatorBMICard(),
          ],
        ),
      ),
    );
  }
}
