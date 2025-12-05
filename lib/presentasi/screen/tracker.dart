// lib/presentasi/widget/daily_health_tracker_card.dart
import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DailyHealthTrackerCard extends StatefulWidget {
  const DailyHealthTrackerCard({super.key});

  @override
  State<DailyHealthTrackerCard> createState() => _DailyHealthTrackerCardState();
}

class _DailyHealthTrackerCardState extends State<DailyHealthTrackerCard> {
  // Daftar kebiasaan harian
  final List<String> habits = [
    "Minum 8 gelas air",
    "Olahraga 30 menit",
    "Tidur 7 jam",
    "Makan sayur & buah",
    "Cek mood hari ini",
  ];

  List<bool> _completed = [false, false, false, false, false];
  int _consecutiveDays = 0;
  int _weeklyProgress = 0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final today = DateTime.now().toString().split(' ')[0]; // "2025-04-05"

    // Muat kebiasaan hari ini
    final savedHabits = prefs.getStringList('habits_$today') ?? [];
    final completedToday = List<bool>.generate(
      habits.length,
      (i) => savedHabits.contains(habits[i]),
    );
    setState(() {
      _completed = completedToday;
    });

    // Hitung hari berturut-turut
    _calculateConsecutiveDays(prefs);
    // Hitung progres mingguan (hari aktif/7)
    _calculateWeeklyProgress(prefs);
  }

  Future<void> _toggleHabit(int index) async {
    setState(() {
      _completed[index] = !_completed[index];
    });

    final prefs = await SharedPreferences.getInstance();
    final today = DateTime.now().toString().split(' ')[0];

    List<String> currentHabits = [];
    for (int i = 0; i < habits.length; i++) {
      if (_completed[i]) currentHabits.add(habits[i]);
    }
    await prefs.setStringList('habits_$today', currentHabits);

    // Update statistik
    _calculateConsecutiveDays(prefs);
    _calculateWeeklyProgress(prefs);
  }

  void _calculateConsecutiveDays(SharedPreferences prefs) {
    int count = 0;
    DateTime now = DateTime.now();
    for (int i = 0; i < 7; i++) {
      DateTime date = now.subtract(Duration(days: i));
      String key = 'habits_${date.toString().split(' ')[0]}';
      if (prefs.getStringList(key)?.isNotEmpty == true) {
        count++;
      } else {
        break;
      }
    }
    setState(() {
      _consecutiveDays = count;
    });
  }

  void _calculateWeeklyProgress(SharedPreferences prefs) {
    int activeDays = 0;
    DateTime now = DateTime.now();
    for (int i = 0; i < 7; i++) {
      DateTime date = now.subtract(Duration(days: i));
      String key = 'habits_${date.toString().split(' ')[0]}';
      if (prefs.getStringList(key)?.isNotEmpty == true) {
        activeDays++;
      }
    }
    setState(() {
      _weeklyProgress = activeDays;
    });
  }

  String _getMotivationalMessage() {
    if (_consecutiveDays == 0) return "Ayo mulai hari ini!";
    if (_consecutiveDays == 1) return "Langkah pertama sudah dimulai!";
    if (_consecutiveDays <= 3) return "Konsisten terus!";
    if (_consecutiveDays <= 5)
      return "Kamu sudah konsisten $_consecutiveDays hari berturut-turut!";
    return "Luar biasa! 7 hari tanpa putus!";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul
          Row(
            children: [
              Icon(Icons.checklist,
                  color: ColorConstant.colorPrimaryDark, size: 20),
              const SizedBox(width: 8),
              Text(
                "Tracker Kesehatan Harian",
                style: TextStyle(
                  fontSize: 18,
                  color: ColorConstant.colorPrimaryDark,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MontserratSemiBold',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Checklist
          for (int i = 0; i < habits.length; i++)
            CheckboxListTile(
              title: Text(habits[i]),
              value: _completed[i],
              onChanged: (bool? value) => _toggleHabit(i),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: ColorConstant.colorPrimary,
              checkColor: Colors.white,
            ),

          const SizedBox(height: 16),

          // Progress Mingguan
          Text(
            "Minggu Ini: $_weeklyProgress/7 hari aktif",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: _weeklyProgress / 7,
                backgroundColor: Colors.grey.shade200,
                color: ColorConstant.colorPrimary,
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Pesan Motivasi
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green.withOpacity(0.1),
              border: Border.all(color: Colors.green, width: 1),
            ),
            child: Text(
              _getMotivationalMessage(),
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
