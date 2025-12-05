import 'package:flutter/material.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';

class Kalkulatorscreen extends StatefulWidget {
  const Kalkulatorscreen({super.key});

  @override
  State<Kalkulatorscreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<Kalkulatorscreen> {
  final _formKey = GlobalKey<FormState>();

  String _jenisKelamin = 'pria';
  String _aktivitas = '1.2';
  String _tujuan = 'pertahankan';

  final TextEditingController _usiaController = TextEditingController();
  final TextEditingController _beratController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();

  double _kalori = 0;
  double _protein = 0;
  double _karbohidrat = 0;
  double _lemak = 0;

  void _hitungNutrisi() {
    if (_formKey.currentState!.validate()) {
      int usia = int.tryParse(_usiaController.text) ?? 0;
      double berat = double.tryParse(_beratController.text) ?? 0;
      double tinggi = double.tryParse(_tinggiController.text) ?? 0;
      double faktorAktivitas = double.tryParse(_aktivitas) ?? 1.2;

      // Rumus Mifflin-St Jeor
      double bmr;
      if (_jenisKelamin == 'pria') {
        bmr = 10 * berat + 6.25 * tinggi - 5 * usia + 5;
      } else {
        bmr = 10 * berat + 6.25 * tinggi - 5 * usia - 161;
      }

      double tdee = bmr * faktorAktivitas;

      // Sesuaikan berdasarkan tujuan
      if (_tujuan == 'turunkan') {
        tdee -= 500; // defisit 500 kkal
      } else if (_tujuan == 'naikkan') {
        tdee += 500; // surplus 500 kkal
      }

      tdee = tdee.clamp(1000.0, 10000.0);

      // Distribusi makronutrien
      double proteinGram = berat * 2.0; // 2g/kg
      double proteinKkal = proteinGram * 4;
      double lemakKkal = tdee * 0.25; // 25% dari total kalori
      double lemakGram = lemakKkal / 9;
      double karboKkal = tdee - proteinKkal - lemakKkal;
      double karboGram = karboKkal / 4;

      setState(() {
        _kalori = tdee;
        _protein = proteinGram;
        _karbohidrat = karboGram;
        _lemak = lemakGram;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimaryDark,
        title: const Text(
          "Kalkulator Nutrisi",
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
                image: AssetImage('assets/images/headerKalkulatorNutrisi.png'),
                fit: BoxFit.cover,
              )),
            ),

            // Form Input
            // Form Input
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white, // <-- background putih
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
                          color: Colors.black87, // teks hitam karena bg putih
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

                      // Usia & Berat (sejajar)
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
                                  decoration: InputDecoration(
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
                                  decoration: InputDecoration(
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

                      // Tinggi & Aktivitas
                      Row(
                        children: [
                          Expanded(
                            child: Column(
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
                                  decoration: InputDecoration(
                                    hintText: "cm",
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
                                  "Tingkat Aktivitas Fisik",
                                  style: TextStyle(
                                    fontFamily: 'MontserratSemiBold',
                                    color: Colors.black87,
                                  ),
                                ),
                                DropdownButtonFormField<String>(
                                  value: _aktivitas,
                                  items: const [
                                    DropdownMenuItem(
                                        value: '1.2', child: Text("Sedentary")),
                                    DropdownMenuItem(
                                        value: '1.375', child: Text("Ringan")),
                                    DropdownMenuItem(
                                        value: '1.55', child: Text("Sedang")),
                                    DropdownMenuItem(
                                        value: '1.725', child: Text("Aktif")),
                                    DropdownMenuItem(
                                        value: '1.9',
                                        child: Text("Sangat Aktif")),
                                  ],
                                  onChanged: (val) =>
                                      setState(() => _aktivitas = val!),
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // Tujuan
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tujuan",
                            style: TextStyle(
                              fontFamily: 'MontserratSemiBold',
                              color: Colors.black87,
                            ),
                          ),
                          DropdownButtonFormField<String>(
                            value: _tujuan,
                            items: const [
                              DropdownMenuItem(
                                  value: 'pertahankan',
                                  child: Text("Pertahankan")),
                              DropdownMenuItem(
                                  value: 'turunkan', child: Text("Turunkan")),
                              DropdownMenuItem(
                                  value: 'naikkan', child: Text("Naikkan")),
                            ],
                            onChanged: (val) => setState(() => _tujuan = val!),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Tombol
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _hitungNutrisi,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.colorPrimaryDark,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Hitung Kebutuhan Nutrisi",
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
            if (_kalori > 0)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: ColorConstant.colorPrimary, // hijau muda
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                const Text("Kalori Harian",
                                    style: TextStyle(
                                        fontFamily: 'MontserratReguler',
                                        color: Colors.white,
                                        fontSize: 15)),
                                const SizedBox(height: 8),
                                Text("${_kalori.round()} kkal",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'MontserratSemiBold',
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color:
                                  ColorConstant.colorPrimaryDark, // hijau tua
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                const Text("Protein",
                                    style: TextStyle(
                                        fontFamily: 'MontserratReguler',
                                        color: Colors.white,
                                        fontSize: 15)),
                                const SizedBox(height: 8),
                                Text("${_protein.round()} g",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'MontserratSemiBold',
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: ColorConstant.colorAccent, // oranye
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                const Text("Karbohidrat",
                                    style: TextStyle(
                                        fontFamily: 'MontserratReguler',
                                        color: Colors.white,
                                        fontSize: 15)),
                                const SizedBox(height: 8),
                                Text("${_karbohidrat.round()} g",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'MontserratSemiBold',
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: ColorConstant.colorAccentLight, // kuning
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                const Text("Lemak",
                                    style: TextStyle(
                                        fontFamily: 'MontserratReguler',
                                        color: Colors.white,
                                        fontSize: 15)),
                                const SizedBox(height: 8),
                                Text("${_lemak.round()} g",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'MontserratSemiBold',
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
