import 'package:flutter/material.dart';
import 'package:bittaqwa_app/data/quiz_data.dart';
import 'package:bittaqwa_app/presentasi/screen/QuizScreen.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';

class QuizListScreen extends StatelessWidget {
  const QuizListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil semua kategori dari QuizData
    final List<Map<String, dynamic>> quizList = QuizData.data;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        title: Text(
          "Kategori Kuis",
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: quizList.length,
        itemBuilder: (context, index) {
          final category = quizList[index]['category'] as String;
          final questionCount = (quizList[index]['questions'] as List).length;

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.colorWhite,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    blurRadius: 3,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset(quizList[index]['image']!),
                title: Text(
                  quizList[index]['title']!,
                  style: const TextStyle(
                    fontFamily: 'MontserratMedium',
                  ),
                ),
                // Tampilkan jumlah soal sebagai "info tambahan"
                trailing: Text(
                  '$questionCount soal',
                  style: const TextStyle(
                    fontFamily: 'MontserratRegular',
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(category: category),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
