import 'package:bittaqwa_app/data/video_data.dart';
import 'package:bittaqwa_app/presentasi/screen/DetailOlahragaScreen.dart';
import 'package:flutter/material.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';

class OlahragaScreen extends StatelessWidget {
  const OlahragaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorAccent,
        title: Text(
          "Olahraga",
          style: TextStyle(
              color: ColorConstant.colorWhite, fontFamily: "MontserratMedium"),
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
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailOlahragaScreen(
                      url: videos[index]['url']!,
                      account: videos[index]['account']!,
                      youtuber: videos[index]['youtuber']!,
                      title: videos[index]['title']!,
                      description: videos[index]['description']!),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      videos[index]['thumbnail']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      videos[index]['account']!,
                      style: const TextStyle(
                          fontFamily: 'MontserratRegular', color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      videos[index]['youtuber']!,
                      style: TextStyle(
                        fontFamily: 'MontserratMedium',
                        color: ColorConstant.colorAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      videos[index]['title']!,
                      style: const TextStyle(
                        fontFamily: 'MontserratSemiBold',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
