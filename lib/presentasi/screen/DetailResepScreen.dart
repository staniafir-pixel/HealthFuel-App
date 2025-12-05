import 'package:flutter/material.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';

class DetailResepScreen extends StatelessWidget {
  final String title;
  final String bahan;
  final String langkah;
  final String informasi;

  const DetailResepScreen({
    required this.title,
    required this.bahan,
    required this.langkah,
    required this.informasi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorAccent,
        title: Text(
          title,
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
        decoration: BoxDecoration(
          color:
              ColorConstant.colorAccentLight, // kuning cerah sebagai background
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul Resep
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.colorAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontserratBold",
                  ),
                ),
                const SizedBox(height: 20),

                // Bahan Utama
                Text(
                  "Bahan Utama",
                  style: TextStyle(
                    fontFamily: 'MontserratSemiBold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.colorAccentLight,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: ColorConstant.colorAccentLight,
                        width: 4,
                      ),
                    ),
                    color: Colors.grey[50],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gunakan arabicText sebagai daftar bahan (dengan format bullet point)
                      ...bahan.split('\n').map((bahan) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "• $bahan",
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: "MontserratMedium",
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Langkah Singkat
                Text(
                  "Langkah Singkat",
                  style: TextStyle(
                    fontFamily: 'MontserratSemiBold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.colorAccentLight,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: ColorConstant.colorAccentLight,
                        width: 4,
                      ),
                    ),
                    color: Colors.grey[50],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gunakan translation sebagai langkah-langkah (dengan nomor)
                      ...langkah.split('\n').asMap().entries.map((entry) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "${entry.key + 1}. ${entry.value}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: "PoppinsRegular",
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Informasi Nilai Gizi
                Text(
                  "Informasi Nilai Gizi",
                  style: TextStyle(
                    fontFamily: 'MontserratSemiBold',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.colorAccentLight,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: ColorConstant.colorAccentLight,
                        width: 4,
                      ),
                    ),
                    color: Colors.grey[50],
                  ),
                  child: Text(
                    informasi, // gunakan reference sebagai info gizi
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "PoppinsRegular",
                    ),
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
