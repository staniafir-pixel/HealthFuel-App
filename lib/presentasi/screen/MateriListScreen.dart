import 'package:flutter/material.dart';
import 'package:bittaqwa_app/data/materi_data.dart';
import 'package:bittaqwa_app/presentasi/screen/DetailMateriScreen.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';

class MateriListScreen extends StatelessWidget {
  const MateriListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil semua kategori dari QuizData
    final List<Map<String, String>> MateriList = MateriData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorAccentLight,
        title: Text(
          "Materi",
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
        itemCount: MateriList.length,
        itemBuilder: (context, index) {
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
                  ]),
              child: ListTile(
                leading: Image.asset(MateriList[index]['image']!),
                title: Text(
                  MateriList[index]['title']!,
                  style: const TextStyle(
                    fontFamily: 'MontserratMedium',
                  ),
                ),
                trailing: Text(
                  MateriList[index]['kalori']!,
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
                      builder: (context) => DetailMateriScreen(
                        title: MateriList[index]['title']!,
                        bahan: MateriList[index]['bahan']!,
                        langkah: MateriList[index]['langkah']!,
                        informasi: MateriList[index]['informasi']!,
                      ),
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
