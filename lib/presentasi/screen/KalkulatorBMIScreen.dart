import 'package:flutter/material.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';

class KalkulatorBMIScreen extends StatefulWidget {
  const KalkulatorBMIScreen({super.key});

  @override
  State<KalkulatorBMIScreen> createState() => _KalkulatorBMIScreenState();
}

class _KalkulatorBMIScreenState extends State<KalkulatorBMIScreen> {
  final _formKey = GlobalKey<FormState>();

  String _jenisKelamin = 'pria';
  final TextEditingController _usiaController = TextEditingController();
  final TextEditingController _beratController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();

  double _bmi = 0;
  String _kategori = '';

  void _hitungBMI() {
    if (_formKey.currentState!.validate()) {
      double berat = double.tryParse(_beratController.text) ?? 0;
      double tinggiCm = double.tryParse(_tinggiController.text) ?? 0;

      if (berat <= 0 || tinggiCm <= 0) {
        // Validasi sudah ditangani oleh validator, tapi jaga-jaga
        return;
      }

      double tinggiM = tinggiCm / 100; // konversi ke meter
      double bmi = berat / (tinggiM * tinggiM);

      String kategori;
      Color color;

      if (bmi < 18.5) {
        kategori = "Kurus";
        color = Colors.blue;
      } else if (bmi < 25) {
        kategori = "Normal";
        color = Colors.green;
      } else if (bmi < 30) {
        kategori = "Kelebihan Berat";
        color = Colors.orange;
      } else {
        kategori = "Obesitas";
        color = Colors.red;
      }

      setState(() {
        _bmi = bmi;
        _kategori = kategori;
        // Anda bisa simpan 'color' juga jika ingin warna dinamis
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimaryDark,
        title: const Text(
          "Kalkulator BMI",
          style: TextStyle(color: Colors.white, fontFamily: 'PoppinsMedium'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Ilustrasi Header
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/headerKalkulatorNutrisi.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Form Input
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Jenis Kelamin (vertikal)
                      const Text(
                        "Jenis Kelamin",
                        style: TextStyle(
                          fontFamily: 'MontserratSemiBold',
                          color: Colors.black87,
                        ),
                      ),
                      RadioListTile<String>(
                        title: const Text("Pria"),
                        value: 'pria',
                        groupValue: _jenisKelamin,
                        onChanged: (val) =>
                            setState(() => _jenisKelamin = val!),
                        activeColor: ColorConstant.colorPrimaryDark,
                      ),
                      RadioListTile<String>(
                        title: const Text("Wanita"),
                        value: 'wanita',
                        groupValue: _jenisKelamin,
                        onChanged: (val) =>
                            setState(() => _jenisKelamin = val!),
                        activeColor: ColorConstant.colorPrimaryDark,
                      ),

                      const SizedBox(height: 16),

                      // Usia & Berat
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Usia (tahun)",
                                  style: TextStyle(
                                    fontFamily: 'MontserratSemiBold',
                                    color: Colors.black87,
                                  ),
                                ),
                                TextFormField(
                                  controller: _usiaController,
                                  keyboardType: TextInputType.number,
                                  validator: (v) {
                                    if (v == null || v.isEmpty)
                                      return 'Usia wajib diisi';
                                    final num = int.tryParse(v);
                                    if (num == null || num < 1 || num > 120)
                                      return 'Usia harus antara 1–120';
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Tahun",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Berat Badan (kg)",
                                  style: TextStyle(
                                    fontFamily: 'MontserratSemiBold',
                                    color: Colors.black87,
                                  ),
                                ),
                                TextFormField(
                                  controller: _beratController,
                                  keyboardType: TextInputType.number,
                                  validator: (v) {
                                    if (v == null || v.isEmpty)
                                      return 'Berat badan wajib diisi';
                                    final num = double.tryParse(v);
                                    if (num == null || num < 1)
                                      return 'Berat tidak valid';
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "kg",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // Tinggi Badan
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tinggi Badan (cm)",
                            style: TextStyle(
                              fontFamily: 'MontserratSemiBold',
                              color: Colors.black87,
                            ),
                          ),
                          TextFormField(
                            controller: _tinggiController,
                            keyboardType: TextInputType.number,
                            validator: (v) {
                              if (v == null || v.isEmpty)
                                return 'Tinggi badan wajib diisi';
                              final num = double.tryParse(v);
                              if (num == null || num < 1)
                                return 'Tinggi tidak valid';
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: "cm",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Tombol Hitung
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _hitungBMI,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.colorPrimaryDark,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Hitung BMI",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Hasil
            if (_bmi > 0)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'BMI Anda: ${_bmi.toStringAsFixed(1)}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          _kategori,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: _kategori == "Normal"
                                ? Colors.green
                                : _kategori == "Kurus"
                                    ? Colors.blue
                                    : _kategori == "Kelebihan Berat"
                                        ? Colors.orange
                                        : Colors.red,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          _getDeskripsiBMI(_kategori),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _getDeskripsiBMI(String kategori) {
    switch (kategori) {
      case "Kurus":
        return "Berat badan Anda kurang. Pertimbangkan untuk menambah berat secara sehat.";
      case "Normal":
        return "Berat badan Anda ideal. Pertahankan pola hidup sehat!";
      case "Kelebihan Berat":
        return "Anda kelebihan berat badan. Kurangi asupan kalori dan perbanyak aktivitas fisik.";
      case "Obesitas":
        return "Anda dalam kategori obesitas. Disarankan konsultasi dengan tenaga kesehatan.";
      default:
        return "";
    }
  }
}
