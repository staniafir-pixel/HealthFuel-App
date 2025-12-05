import 'package:bittaqwa_app/data/resep_data.dart';
import 'package:bittaqwa_app/presentasi/screen/DetailResepScreen.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:flutter/material.dart';

class ResepListScreen extends StatelessWidget {
  final String category;
  const ResepListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> resepList = getResepList(category);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorAccent,
        title: Text(
          "List Resep",
          style: TextStyle(
              color: ColorConstant.colorWhite, fontFamily: "PoppinsMedium"),
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
        itemCount: resepList.length,
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
                leading: Image.asset(resepList[index]['image']!),
                title: Text(
                  resepList[index]['title']!,
                  style: const TextStyle(
                    fontFamily: 'MontserratMedium',
                  ),
                ),
                trailing: Text(
                  resepList[index]['kalori']!,
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
                      builder: (context) => DetailResepScreen(
                        title: resepList[index]['title']!,
                        bahan: resepList[index]['bahan']!,
                        langkah: resepList[index]['langkah']!,
                        informasi: resepList[index]['informasi']!,
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
