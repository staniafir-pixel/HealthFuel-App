// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:bittaqwa_app/data/quiz_data.dart';
import 'dart:async'; //timer

class QuizScreen extends StatefulWidget {
  final String category;

  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  int timeLeft = 30;
  bool isAnswered = false;
  Timer? timer;

  late List<Map<String, dynamic>> currentCategoryQuestions;

  @override
  void initState() {
    super.initState();
    //_startTimer();

    // Ambil data dari file terpisah
    final categoryData = QuizData.data.firstWhere(
      (cat) => cat['category'] == widget.category,
      orElse: () => {'questions': []},
    );
    currentCategoryQuestions = List<Map<String, dynamic>>.from(
      categoryData['questions'] ?? [],
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  // void _startTimer() {
  //   timer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     setState(() {
  //       if (timeLeft > 0) {
  //         timeLeft--;
  //       } else {
  //         _nextQuestion();
  //       }
  //     });
  //   });
  // }

  void _checkAnswer(int selectedOption) {
    if (isAnswered) return;

    setState(() {
      isAnswered = true;
      if (selectedOption ==
          currentCategoryQuestions[currentQuestionIndex]['correct']) {
        score++;
      }
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      _nextQuestion();
    });
  }

  void _nextQuestion() {
    setState(() {
      currentQuestionIndex++;
      isAnswered = false;
      timeLeft = 30;
    });

    if (currentQuestionIndex >= currentCategoryQuestions.length) {
      _showResult();
    } else {
      //_startTimer();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hasil Kuis'),
        content: Text(
            'Anda menjawab $score dari ${currentCategoryQuestions.length} soal dengan benar.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= currentCategoryQuestions.length) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.colorAccent,
          title: Text(
            widget.category,
            style: TextStyle(
              color: ColorConstant.colorWhite,
              fontFamily: "PoppinsMedium",
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle, size: 80, color: Colors.green),
              const SizedBox(height: 20),
              Text(
                'Selamat! Anda telah menyelesaikan kuis $widget.category',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Skor Anda: $score / ${currentCategoryQuestions.length}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      );
    }

    final question = currentCategoryQuestions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorAccent,
        title: Text(
          widget.category,
          style: TextStyle(
            color: ColorConstant.colorWhite,
            fontFamily: "PoppinsMedium",
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, // ✅ BENAR: 'L' besar
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      '$timeLeft',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  '${currentQuestionIndex + 1}/10',
                  style: TextStyle(
                      color: ColorConstant.colorAccentLight,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorConstant.colorAccentLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                question['question'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'MontserratBold',
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(
                  4,
                  (index) {
                    final optionText = question['options'][index] as String;
                    final isCorrect = index == question['correct'];
                    final isSelected = isAnswered;

                    Color bgColor;
                    if (isSelected) {
                      bgColor = isCorrect ? Colors.green : Colors.red;
                    } else {
                      bgColor = ColorConstant.colorAccentLight;
                    }

                    return GestureDetector(
                      onTap: () => _checkAnswer(index),
                      child: Container(
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                String.fromCharCode(65 + index), // A, B, C, D
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'MontserratMedium',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                optionText, //manggil data dari data quiz
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'MontserratBold',
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
