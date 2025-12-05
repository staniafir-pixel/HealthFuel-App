import 'package:bittaqwa_app/presentasi/screen/ResepListScreen.dart';
import 'package:bittaqwa_app/presentasi/widget/card_resep.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:flutter/material.dart';

class Resepscreen extends StatelessWidget {
  const Resepscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.colorAccent,
          title: Text(
            "Resep",
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
        body: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/headerResep.png'),
                fit: BoxFit.cover,
              )),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 24,
                crossAxisSpacing: 12,
                children: [
                  CardDoa(
                      image: 'assets/images/icSarapan.png',
                      title: 'Sarapan',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResepListScreen(
                                    category: 'Sarapan',
                                  )),
                        );
                      }),
                  CardDoa(
                      image: 'assets/images/icMakanSiang.png',
                      title: 'Makan Siang',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResepListScreen(
                                    category: 'Makan Siang',
                                  )),
                        );
                      }),
                  CardDoa(
                      image: 'assets/images/icMakanMalam.png',
                      title: 'Makan Malam',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResepListScreen(
                                    category: 'Makan Malam',
                                  )),
                        );
                      }),
                  CardDoa(
                      image: 'assets/images/icCamilan.png',
                      title: 'Camilan',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResepListScreen(
                                    category: 'Camilan',
                                  )),
                        );
                      }),
                  CardDoa(
                      image: 'assets/images/icSmoothies.png',
                      title: 'Smoothies',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResepListScreen(
                                    category: 'Smoothies',
                                  )),
                        );
                      }),
                  CardDoa(
                      image: 'assets/images/icJamu.png',
                      title: 'Minuman Herbal',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResepListScreen(
                                    category: 'Jamu',
                                  )),
                        );
                      }),
                ],
              ),
            )),
          ],
        ));
  }
}
