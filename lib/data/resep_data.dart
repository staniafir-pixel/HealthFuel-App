List<Map<String, String>> getResepList(String category) {
  switch (category) {
    case "Makan Malam":
      return [
        {
          'image': 'assets/images/icMakanMalam.png',
          'title': 'Dada Ayam Panggang dengan Sayuran Panggang dan Quinoa',
          'kalori': '500kkal',
          'bahan':
              '2 dada ayam dibumbui minyak zaitun, paprika, bawang putih bubuk, bawang bombay bubuk, garam, merica.\nBrokoli, wortel, zucchini dibumbui minyak zaitun, garam, merica, oregano.\n100g quinoa + 200 ml air/kaldus.\nLemon & peterseli (opsional).',
          'langkah':
              'Masak quinoa hingga air terserap (15-20 menit).\nPanaskan oven ke 200°C.\nBumbui sayuran dengan minyak & rempah.\nBumbui ayam dengan minyak & bumbu kering.\nPanggang bersama ayam & sayuran di loyang selama 20-25 menit.\nSajikan dengan quinoa, beri lemon & peterseli.',
          'informasi':
              '1 porsi dada ayam panggang + sayuran panggang + quinoa (480-520 kalori):\n±10-14 g lemak, ±75 mg kolesterol, ±200-250 mg natrium, ±38–45 g karbohidrat (±6–8 g serat), ±43–50 g protein.',
        },
        {
          'title': 'Nasi Ayam Tumis Sayur',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ayam: 9 oz (±255 g) potongan dada ayam siap pakai (grilled chicken strips)\nNasi: 1 cup (±185 g) nasi instan\nKaldu: 1 cup (240 ml) kaldu ayam (untuk memasak nasi)\nSayuran:\n½ cup paprika hijau cincang (beku atau segar)\n¼ cup bawang bombay cincang\n½ cup jagung manis (beku, dicairkan)\n½ cup kacang polong (beku, dicairkan)\nBumbu kering:\n1 sdt basil kering\n1 sdt sage bubuk\nGaram & merica secukupnya\nMinyak: 2 sdt minyak zaitun (untuk menumis)',
          'langkah':
              'Masak nasi instan dalam kaldu ayam sesuai petunjuk kemasan.\nPanaskan minyak zaitun di wajan besar, tumis paprika dan bawang bombay selama 2–3 menit hingga lunak tapi masih renyah.\nMasukkan ayam, jagung, kacang polong, basil, dan sage. Masak 4–5 menit hingga panas merata.\nTambahkan nasi yang sudah matang, aduk rata. Bumbui dengan garam dan merica.\nSajikan hangat.',
          'informasi':
              'Kalori: 239 kkal\nLemak: 5 g (1 g lemak jenuh)\nKolesterol: 42 mg\nNatrium: 914 mg\nKarbohidrat: 30 g (3 g gula, 2 g serat)\nProtein: 19 g',
          'kalori': '239 kkal'
        },
        {
          'title': 'Chicken Korma',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ayam: 1,5 lb dada ayam potong dadu\nSaus: Bawang bombay, bawang putih, jahe, tomat, santan, krim, kunyit, jinten, ketumbar, cabai bubuk\nPelengkap: Kacang mete, ketumbar segar',
          'langkah':
              'Tumis bawang, bawang putih, jahe hingga harum.\nMasukkan rempah kering, aduk rata.\nTambahkan tomat dan ayam, masak hingga berubah warna.\nTuang santan & krim, masak 10–15 menit hingga ayam empuk.\nTaburi kacang mete & ketumbar.',
          'informasi': '~380 kkal | 20g lemak | 30g protein | 18g karbohidrat',
          'kalori': '380 kkal',
        },
        {
          'title': 'Zucchini Ricotta Bake',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Zucchini: 2 lb, iris tipis memanjang\nKeju: Ricotta (15 oz), mozzarella, Parmesan\nSaus: 28 oz saus pasta (marinara)\nBumbu: Telur pengikat, roti kering, peterseli, oregano, basil',
          'langkah':
              'Kukus zucchini 5–6 menit, tiriskan & keringkan.\nCampur ricotta, telur, roti kering, Parmesan, bumbu.\nLapisi loyang dengan saus → zucchini → ricotta → mozzarella. Ulangi.\nTaburi atas dengan roti kering & Parmesan.\nPanggang 350°F (175°C): 45 menit tertutup + 15 menit terbuka.',
          'informasi':
              '~350 kkal | 18g lemak | 20g protein | 25g karbohidrat | tinggi serat',
          'kalori': '350 kkal',
        },
        {
          'title': 'Herbed Tuna Salad',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              'Tuna: 2 kaleng tuna dalam air, tiriskan\nSayuran: Seledri, bawang merah, peterseli\nDressing: Mayones rendah lemak, mustard Dijon, jus lemon\nPelengkap: Daun selada atau roti gandum',
          'langkah':
              'Campur tuna dengan seledri, bawang, peterseli.\nTambahkan mayones, mustard, lemon, garam, merica.\nAduk rata. Sajikan di atas selada atau sebagai isian sandwich.',
          'informasi': '~300 kkal | 12g lemak | 35g protein | 8g karbohidrat',
          'kalori': '300 kkal',
        },
        {
          'title': 'Grilled Tender Flank Steak',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Daging: 1,5 lb flank steak\nMarinade: Kecap rendah sodium, jus lemon, madu, bawang putih cincang\nPelengkap: Irisan tipis melawan serat',
          'langkah':
              'Rendam steak dalam marinade 6–8 jam.\nPanggang di atas api sedang 8–10 menit per sisi (medium-rare: 135°F).\nIstirahatkan 5 menit, lalu iris tipis melawan serat.',
          'informasi': '~320 kkal | 14g lemak | 38g protein | 12g karbohidrat',
          'kalori': '320 kkal',
        },
        {
          'title': 'Grilled Teriyaki Chicken',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ayam: Dada ayam utuh atau potong\nSaus: Kecap, madu, bawang putih, jahe, minyak wijen\nPelengkap: Wijen panggang, irisan bawang daun',
          'langkah':
              'Campur saus teriyaki, marinasi ayam 15+ menit.\nPanggang hingga kecoklatan, oles sisa saus.\nTaburi wijen & daun bawang.',
          'informasi': '~360 kkal | 10g lemak | 40g protein | 25g karbohidrat',
          'kalori': '360 kkal',
        },
        {
          'title': 'Spinach Shrimp Fettuccine',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Pasta: 1 lb fettuccine\nProtein: 1 lb udang mentah, kupas\nSayuran: Bayam, tomat plum, bawang putih\nPelengkap: Parmesan, minyak zaitun, bumbu Italia',
          'langkah':
              'Rebus pasta.\nTumis bayam & bawang putih, tambahkan udang & tomat.\nAduk pasta, taburi keju.',
          'informasi': '~390 kkal | 12g lemak | 28g protein | 45g karbohidrat',
          'kalori': '390 kkal',
        },
        {
          'title': 'Spaghetti Squash with Meat Sauce',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Labu: 1 buah spaghetti squash\nSaus: Daging cincang (sapi/ayam), saus tomat, bawang, bawang putih\nBumbu: Oregano, basil, garam',
          'langkah':
              'Panggang labu belah dua hingga empuk (30–40 menit, 400°F).\nSisir daging labu jadi “mi”.\nTumis daging & bumbu, campur dengan labu.',
          'informasi': '~350 kkal | 14g lemak | 22g protein | 35g karbohidrat',
          'kalori': '350 kkal',
        },
        {
          'title': 'Chicken with Florentine Sauce',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ayam: 6 potong dada (4 oz tiap)\nSaus: Bayam beku (peras kering), susu, sherry, tepung, mentega, bawang daun, pimientos\nKeju: Parmesan (lapisan), mozzarella (taburan), sour cream',
          'langkah':
              'Lumuri ayam dengan Parmesan & rempah, panggang hingga matang.\nBuat saus: Tumis bawang & bawang putih, tambahkan tepung → susu → bayam → sour cream.\nSiram saus ke ayam, taburi mozzarella.',
          'informasi': '~380 kkal | 18g lemak | 34g protein | 18g karbohidrat',
          'kalori': '380 kkal',
        },
        {
          'title': 'Turkey Potpies',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Daging: 4 cangkir kalkun matang potong dadu\nSayuran: Kentang, wortel, bawang, seledri, kacang polong\nSaus: Kaldu ayam, krim, tepung, mentega\nTopping: 2 lembar kulit pie siap pakai, oles telur',
          'langkah':
              'Tumis sayuran, buat roux dengan tepung.\nTuang kaldu, masak hingga kental. Tambahkan kalkun & krim.\nTuang ke loyang pie, tutup dengan kulit, oles telur.\nPanggang 375°F selama 40–45 menit.',
          'informasi': '~390 kkal | 18g lemak | 28g protein | 30g karbohidrat',
          'kalori': '390 kkal',
        },
        {
          'title': 'Caribbean Shrimp Bowl',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Udang: 1 lb, bumbui jerk seasoning\nNasi: Nasi putih atau merah\nSayuran: Paprika, mangga, alpukat, selada\nDressing: Jeruk nipis, minyak zaitun, daun ketumbar',
          'langkah':
              'Panggang/tumis udang dengan bumbu.\nSusun nasi, sayuran segar, dan udang di mangkuk.\nPercikkan dressing.',
          'informasi': '~370 kkal | 12g lemak | 25g protein | 40g karbohidrat',
          'kalori': '370 kkal',
        },
        {
          'title': 'Tofu Stir-Fry with Brussels Sprouts',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Tahu: 14 oz, potong & goreng/panggang\nSayuran: Kubis Brussel iris, wortel, bawang bombay\nSaus: Kecap, cuka beras, jahe, bawang putih, madu',
          'langkah':
              'Tumis sayuran hingga empuk.\nMasukkan tahu & saus, aduk rata.\nSajikan dengan nasi atau quinoa.',
          'informasi': '~320 kkal | 14g lemak | 18g protein | 30g karbohidrat',
          'kalori': '320 kkal',
        },
        {
          'title': 'Baked Halibut',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ikan: 4 fillet halibut\nBumbu: Minyak zaitun, lemon, bawang putih, peterseli, garam, merica',
          'langkah':
              'Lumuri ikan dengan bumbu.\nPanggang 400°F selama 12–15 menit.\nSajikan dengan lemon segar.',
          'informasi': '~280 kkal | 10g lemak | 40g protein | 4g karbohidrat',
          'kalori': '280 kkal',
        },
        {
          'title': 'Quick Apricot Chicken',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ayam: Dada potong dadu\nSaus: Selai aprikot, mustard Dijon, kecap, cuka balsamic\nPelengkap: Bawang bombay, bawang putih',
          'langkah':
              'Tumis ayam hingga matang.\nMasukkan saus & bumbu, masak hingga mengental.\nSajikan dengan nasi atau mashed potato.',
          'informasi': '~340 kkal | 8g lemak | 32g protein | 35g karbohidrat',
          'kalori': '340 kkal',
        },
        {
          'title': 'Chicken Sweet Potato Skillet',
          'image': 'assets/images/icMakanMalam.png',
          'bahan':
              'Ayam: Potong dadu\nUbi: Potong dadu kecil\nSayuran: Bayam, bawang merah\nBumbu: Bubuk kari, bawang putih, kaldu ayam',
          'langkah':
              'Tumis ayam, angkat.\nTumis ubi & bawang hingga empuk, tambahkan bumbu & kaldu.\nMasukkan kembali ayam & bayam, masak hingga layu.',
          'informasi': '~360 kkal | 10g lemak | 28g protein | 40g karbohidrat',
          'kalori': '360 kkal',
        },
      ];
    case "Sarapan":
      return [
        {
          'title': 'Frittata',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              'Sayuran: 1½ cangkir campuran (misalnya bayam, jamur, paprika merah, bawang bombay), cincang\nTelur: 8 butir telur besar\nSusu: ¼ cangkir susu whole milk\nBumbu: ¾ sdt garam, ¼ sdt bawang putih bubuk, ¼ sdt merica, ¼ sdt mustard bubuk (opsional)\nMinyak: 1 sdm minyak zaitun\nTaburan: 2 sdm daun kucai cincang',
          'langkah':
              'Panaskan oven ke 400°F (200°C).\nDi wajan tahan oven (cast iron atau non-stick), panaskan minyak zaitun. Tumis sayuran selama 3–4 menit hingga empuk tapi masih renyah. Ratakan di dasar wajan.\nSementara itu, kocok telur, susu, garam, bawang putih, merica, dan mustard dalam mangkuk besar hingga rata.\nTuangkan campuran telur ke atas sayuran. Masak di atas kompor selama 3–4 menit hingga tepi mulai mengeras.\nPindahkan wajan ke oven. Panggang 15–20 menit hingga bagian tengah tidak bergoyang dan permukaan kecokelatan.\nDiamkan 5–10 menit, taburi kucai, lalu potong menjadi irisan segitiga.',
          'informasi':
              '≈220–250 kalori | lemak 16–18g | protein 14–16g | karbohidrat 3–4g | kolesterol ~380 mg',
          'kalori': '235 kkal',
        },
        {
          'title': 'Turkey Breakfast Sausage',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '1 pon daging kalkun giling lean\n¾ sdt garam\n½ sdt sage bubuk\n½ sdt merica\n¼ sdt jahe bubuk',
          'langkah':
              'Dalam mangkuk, remas-remas daging kalkun dengan garam, sage, merica, dan jahe hingga tercampur rata (jangan overmix).\nBentuk menjadi 8 patty bulat (2 inci diameter).\nPanaskan wajan cast iron dengan sedikit minyak. Masak patty selama 4–6 menit per sisi hingga suhu internal 165°F dan berwarna kecokelatan.\nSajikan hangat sebagai pengganti sosis biasa.',
          'informasi':
              '≈80–90 kalori | lemak 4–5g | protein 10–12g | natrium ~220 mg',
          'kalori': '85 kkal',
        },
        {
          'title': 'Chaffles (Egg & Cheese Waffles)',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '1 butir telur besar (suhu ruang)\n½ cangkir keju cheddar parut (parut sendiri)\n¼ sdt garam\n¼ sdt merica',
          'langkah':
              'Panaskan mini waffle maker di suhu sedang.\nKocok telur, garam, dan merica dalam mangkuk kecil. Tambahkan keju, aduk rata.\nSemprot waffle maker dengan cooking spray. Tuang 2 sdm adonan ke tengah plat bawah. Tutup dan masak 3–4 menit hingga kecokelatan dan kering.\nAngkat dengan garpu, dinginkan di rak agar tetap renyah.\nUlangi hingga adonan habis (menghasilkan 2–3 chaffle).',
          'informasi':
              '≈110–120 kalori | lemak 8–9g | protein 7–8g | karbohidrat 1–2g',
          'kalori': '115 kkal',
        },
        {
          'title': 'Oven-Baked Denver Omelet',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '8 butir telur besar\n½ cangkir half-and-half cream\n1 cangkir keju cheddar parut\n1 cangkir ham matang cincang halus\n¼ cangkir paprika hijau cincang\n¼ cangkir bawang bombay cincang',
          'langkah':
              'Panaskan oven ke 400°F (200°C). Olesi Loyang 9×9 inci dengan semprotan masak.\nKocok telur dan cream hingga rata. Masukkan keju, ham, paprika, dan bawang. Aduk rata.\nTuang ke loyang. Panggang 25–30 menit hingga tengah tidak bergoyang dan permukaan keemasan.\nDinginkan 5 menit, potong kotak, sajikan hangat.',
          'informasi':
              '≈290–320 kalori | lemak 20–22g | protein 20–22g | karbohidrat 4–5g',
          'kalori': '305 kkal',
        },
        {
          'title': 'Rainbow Fruit Toast',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '5 irisan roti sourdough atau multigrain, panggang\n1 cangkir cream cheese rendah lemak\nPilihan topping (pilih salah satu):\nStrawberry-basil: stroberi + basil + garam laut\nMango-chili: mangga + kulit jeruk nipis + bubuk cabai\nKiwi-mint: kiwi + anggur hijau + daun mint\nTangerine-thyme: jeruk keprok + pistachio + thyme\nBerry-serrano: blueberry + blackberry + madu + irisan serrano\nAvocado-tomato: alpukat + tomat ceri + merica kasar',
          'langkah':
              'Oles tiap irisan roti panggang dengan cream cheese hingga rata.\nPilih kombinasi buah sesuai selera, susun di atas roti.\nTaburi rempah/herba/bumbu pelengkap sesuai topping.\nSajikan segera sebagai sarapan ringan atau camilan sehat.',
          'informasi':
              '≈180–240 kalori | lemak 8–12g | protein 5–7g | karbohidrat 20–28g',
          'kalori': '210 kkal',
        },
        {
          'title': 'Homemade Antipasto Salad',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              'Pasta: 2 pon fusilli/rotini, rebus, bilas dingin\nSayuran: 4–5 tomat, 3 bawang bombay, 2 paprika hijau (semua cincang)\nProtein: 1 pon salami Genoa, 1 pon pepperoni (iris tipis & potong korek)\nLainnya: ½ pon provolone (dadu), 1 cangkir zaitun utuh (belah), 2 kaleng chickpeas (tiris)\nSaus: 1 cangkir cuka anggur merah, ½ cangkir gula, 2 sdm oregano kering, 2 sdt garam, 1 sdt merica, 1½ cangkir minyak zaitun',
          'langkah':
              'Rebus pasta hingga al dente, bilas air dingin, tiriskan.\nCampur pasta dengan semua bahan salad dalam mangkuk besar.\nBlender cuka, gula, oregano, garam, dan merica. Tuang minyak zaitun perlahan sambil blend hingga saus mengental.\nTuangkan saus ke salad, aduk rata.\nTutup dan simpan di kulkas minimal 4 jam sebelum saji.',
          'informasi':
              '≈420–470 kalori | lemak 24–28g | protein 16–18g | karbohidrat 36–40g | natrium ~950 mg',
          'kalori': '445 kkal',
        },
        {
          'title': 'Chicken Caesar Wrap',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '¾ cangkir saus Caesar rendah lemak\n¼ cangkir Parmesan parut\n½ sdt bawang putih bubuk\n¼ sdt merica\n3 cangkir ayam matang (potong dadu)\n2 cangkir daun romaine (sobek, jangan cincang)\n¾ cangkir crouton\n6 tortilla gandum utuh (8 inci)',
          'langkah':
              'Campur saus Caesar, Parmesan, bawang putih, dan merica dalam mangkuk besar.\nTambahkan ayam, romaine, dan crouton. Aduk perlahan hingga terbalut saus.\nHangatkan tortilla sebentar agar lentur.\nTaruh ⅔ cangkir campuran di tengah tortilla. Lipat sisi kiri-kanan, lalu gulung rapat.\nSajikan segera agar romaine tetap renyah.',
          'informasi':
              '337 kalori | lemak 12g | kolesterol 57mg | natrium 730mg | protein 27g',
          'kalori': '337 kkal',
        },
        {
          'title': 'Thai Chicken Wraps',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '¾ lb ayam dada, iris tipis\n½ sdt garlic salt, ¼ sdt merica\n4 cangkir campuran brokoli coleslaw\n1 bawang merah, iris tipis\n1 sdt jahe segar cincang\nSaus kacang: ¼ cangkir gula, ¼ cangkir selai kacang, 3 sdm kecap asin, 2–3 sdm air, 2 siung bawang putih\n2 sdm minyak canola\n6 tortilla gandum (8 inci)',
          'langkah':
              'Buat saus kacang: aduk gula, selai kacang, kecap, air, dan bawang putih hingga halus. Sisihkan.\nBumbui ayam, lalu tumis dalam 1 sdm minyak selama 3–4 menit hingga matang. Angkat.\nDi wajan yang sama, panaskan sisa minyak. Tumis coleslaw, bawang merah, dan jahe selama 2–3 menit.\nMasukkan saus kacang, aduk rata. Matikan api.\nIsi tortilla hangat dengan ayam dan campuran sayur. Gulung seperti burrito.\nSajikan dengan perasan jeruk nipis dan daun ketumbar (opsional).',
          'informasi':
              '≈380–420 kalori | lemak 18–22g | protein 20–24g | karbohidrat 35–40g',
          'kalori': '400 kkal',
        },
        {
          'title': 'Miso Soup',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '4 cangkir kaldu sayur rendah sodium atau air\n2 sdt bubuk dashi\n1 inci jahe segar (geprek, jangan dikupas)\n1 bungkus (16 oz) tofu sutra, potong dadu\n¼ cangkir pasta miso\n1 sdm serpih wakame kering\n1 sdm kecap asin rendah sodium (opsional)\n3 batang daun bawang, iris',
          'langkah':
              'Masak kaldu, dashi, dan jahe dalam panci. Simmer 10–15 menit. Buang jahe.\nMatikan api. Masukkan tofu, miso, dan wakame.\nAduk hingga miso larut (jangan didihkan!).\nTambahkan kecap jika suka.\nTuang ke mangkuk, taburi daun bawang. Sajikan hangat.',
          'informasi':
              '≈110–140 kalori | lemak 4–6g | protein 8–10g | karbohidrat 8–10g',
          'kalori': '125 kkal',
        },
        {
          'title': 'Italian Grilled Cheese (Pesto Grilled Cheese)',
          'image': 'assets/images/icSarapan.png',
          'bahan':
              '8 potong roti Italia\n4 sdm pesto siap pakai\n4 lembar provolone\n4 lembar mozzarella rendah lemak\n5 sdt minyak zaitun\nSaus marinara hangat (untuk cocolan, opsional)',
          'langkah':
              'Oles 4 potong roti dengan pesto.\nTumpuk provolone dan mozzarella di atasnya. Tutup dengan sisa roti.\nOles sisi luar sandwich dengan minyak zaitun.\nPanggang di wajan datar (medium heat) selama 3–4 menit per sisi hingga kecokelatan dan keju meleleh.\nPotong diagonal, sajikan dengan marinara.',
          'informasi':
              '≈350–400 kalori | lemak 20–24g | protein 16–18g | karbohidrat 28–32g',
          'kalori': '375 kkal',
        },
      ];
    case "Makan Siang":
      return [
        {
          'title': 'Pepperoni Pizza Loaf',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              '1 loaf (1 pon) adonan roti beku, sudah dicairkan\n2 butir telur (pisahkan kuning dan putihnya)\n1 sdm keju Parmesan parut\n1 sdt parsley segar cincang\n1 sdt oregano kering\n½ sdt bawang putih bubuk\n¼ sdt merica\n1 sdm minyak zaitun\n8 oz irisan pepperoni\n2 cangkir keju mozzarella parut (part-skim)\n1 kaleng (4 oz) jamur potong, tiriskan\n¼–½ cangkir cincin paprika acar\n1 buah paprika hijau, cincang\n1 kaleng (2¼ oz) zaitun iris\n1 kaleng (15 oz) saus pizza (untuk cocolan)',
          'langkah':
              'Panaskan oven ke suhu 175°C (350°F). Siapkan loyang datar, olesi sedikit minyak atau alasi kertas roti.\nBentangkan adonan roti di atas loyang, lalu gilas atau tekan hingga membentuk persegi panjang ukuran 15×10 inci.\nDalam mangkuk kecil, campur kuning telur, Parmesan, minyak zaitun, parsley, oregano, bawang putih bubuk, dan merica. Aduk rata hingga membentuk campuran olesan.\nOleskan campuran kuning telur merata di atas permukaan adonan.\nTaburkan pepperoni, keju mozzarella, jamur, paprika acar, paprika hijau cincang, dan zaitun secara merata di atas adonan, hindari pinggiran sekitar 1 inci.\nGulung adonan perlahan dari sisi panjang (seperti gulungan jelly roll), tekan sedikit agar isian tidak keluar.\nRekatkan sambungan dengan jari, lalu lipat kedua ujungnya ke bawah agar tidak terbuka saat dipanggang.\nLetakkan roti dengan sisi jahitan menghadap bawah di loyang. Oleskan putih telur tipis-tipis di seluruh permukaan roti—ini membantu menghasilkan kulit yang glossy dan kecokelatan.\nPanggang selama 35–40 menit hingga roti matang sempurna dan berwarna keemasan.\nPanaskan saus pizza dalam microwave atau kompor sebentar. Potong roti jadi irisan tebal, sajikan hangat dengan saus pizza sebagai cocolan.',
          'informasi':
              '≈520–580 kalori | lemak 28–32g | protein 22–26g | karbohidrat 45–50g | natrium ~1100 mg',
          'kalori': '550 kkal',
        },
        {
          'title': 'Chicken Caesar Wrap',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              '¾ cangkir saus Caesar krim rendah lemak\n¼ cangkir keju Parmesan parut\n½ sdt bawang putih bubuk\n¼ sdt merica\n3 cangkir dada ayam matang, potong dadu\n2 cangkir daun romaine, disobek (jangan dicincang halus)\n¾ cangkir crouton Caesar, cincang kasar\n6 buah tortilla gandum utuh ukuran 8 inci',
          'langkah':
              'Dalam mangkuk besar, campur saus Caesar, Parmesan parut, bawang putih bubuk, dan merica. Aduk hingga tercampur rata.\nMasukkan potongan ayam, daun romaine, dan crouton. Aduk perlahan dengan spatula atau sendok besar agar bahan terbalut saus secara merata, tapi daun tetap utuh dan tidak hancur.\nSiapkan tortilla. Jika terasa kaku, hangatkan sebentar di wajan datar atau microwave selama 15–20 detik agar lebih lentur.\nTaruh satu tortilla di permukaan datar. Ambil sekitar ⅔ cangkir campuran ayam Caesar, letakkan memanjang di tengah tortilla, jangan terlalu dekat ke tepi.\nLipat sisi kiri dan kanan tortilla ke arah tengah, lalu gulung dari bawah ke atas hingga rapat dan isian tertutup sempurna.\nUlangi hingga semua tortilla terisi. Sajikan segera agar romaine tetap renyah.',
          'informasi':
              '337 kalori | lemak 12g (2g jenuh) | kolesterol 57mg | natrium 730mg | karbohidrat 29g (2g gula, 4g serat) | protein 27g',
          'kalori': '337 kkal',
        },
        {
          'title': 'Homemade Antipasto Salad',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              '2 pon (sekitar 900g) pasta spiral (fusilli/rotini)\n4–5 tomat besar, cincang kasar\n3 bawang bombay besar, cincang\n2 paprika hijau besar, cincang\n2 kaleng (15–16 oz) chickpeas, tiriskan dan bilas\n1 pon salami Genoa, iris tipis lalu potong korek api\n1 pon pepperoni, iris tipis lalu potong korek api\n½ pon keju provolone, potong dadu\n1 cangkir zaitun hitam matang, belah dua\n1 cangkir cuka anggur merah\n½ cangkir gula\n2 sdm oregano kering\n2 sdt garam\n1 sdt merica\n1½ cangkir minyak zaitun',
          'langkah':
              'Rebus pasta sesuai petunjuk kemasan hingga al dente (jangan sampai lembek). Tiriskan, lalu bilas segera dengan air dingin untuk menghentikan proses pematangan. Tiriskan kembali hingga kering.\nDalam mangkuk besar (atau beberapa mangkuk jika terlalu penuh), campur pasta, tomat, bawang bombay, paprika, chickpeas, salami, pepperoni, provolone, dan zaitun.\nUntuk membuat saus: masukkan cuka, gula, oregano, garam, dan merica ke dalam blender. Nyalakan blender sebentar hingga tercampur.\nSambil blender tetap menyala, tuangkan minyak zaitun perlahan dalam aliran tipis dan stabil, hingga saus mengental dan menyatu.\nTuangkan saus ke atas campuran salad. Aduk perlahan dengan spatula besar hingga semua bahan terbalut saus secara merata.\nTutup mangkuk dengan plastik wrap atau tutup kedap udara, lalu simpan di kulkas minimal 4 jam atau semalaman agar rasa menyatu sempurna.\nAduk kembali sebelum disajikan.',
          'informasi':
              '≈420–470 kalori | lemak 24–28g | protein 16–18g | karbohidrat 36–40g | natrium ~950 mg',
          'kalori': '445 kkal',
        },
        {
          'title': 'Cauliflower Soup',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              '1 kepala kembang kol ukuran sedang, potong bunga kecil\n1 wortel sedang, parut atau iris tipis\n¼ cangkir seledri cincang\n2½ cangkir air\n2 sdt kaldu ayam bubuk (atau 1 bungkus kaldu sayur jika ingin vegetarian)\n3 sdm mentega\n3 sdm tepung terigu\n¾ sdt garam\n⅛ sdt merica\n2 cangkir susu 2%\n1 cangkir keju cheddar parut\n½–1 sdt saus pedas (opsional, seperti Tabasco atau Sriracha)',
          'langkah':
              'Dalam panci besar (Dutch oven), campur kembang kol, wortel, seledri, air, dan kaldu bubuk.\nDidihkan di atas api sedang-tinggi. Setelah mendidih, kecilkan api, tutup panci, dan biarkan mendidih perlahan selama 12–15 menit hingga sayuran empuk. Jangan buang air rebusannya.\nSambil menunggu, buat saus keju: lelehkan mentega dalam panci terpisah di atas api sedang.\nTambahkan tepung, garam, dan merica. Aduk terus selama 1–2 menit hingga membentuk roux (adonan dasar pengental) yang halus dan beraroma.\nTuangkan susu sedikit demi sedikit sambil terus diaduk agar tidak bergerindil.\nMasak sambil diaduk selama 2 menit hingga campuran mengental dan mulai mendidih.\nKecilkan api, lalu masukkan keju cheddar sedikit demi sedikit sambil diaduk hingga meleleh sempurna. Jika suka, tambahkan saus pedas.\nTuangkan saus keju ke dalam panci rebusan sayuran. Aduk rata hingga semua tercampur menjadi sup yang creamy dan lembut.\nCicipi, sesuaikan garam/merica jika perlu. Sajikan hangat dengan roti panggang atau crouton.',
          'informasi':
              '≈220–250 kalori | lemak 14–16g | protein 10–12g | karbohidrat 15–18g | natrium ~600 mg',
          'kalori': '235 kkal',
        },
        {
          'title': 'Salmon Salad Sandwiches',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              '3 oz cream cheese, sudah dilembutkan suhu ruang\n1 sdm mayones (bisa diganti vegan mayo)\n1 sdm air lemon segar\n1 sdt dill kering\n¼–½ sdt garam (sesuai selera)\n⅛ sdt merica\n1 kaleng (6 oz) salmon pink, tiriskan, buang kulit dan duri\n½ cangkir wortel parut\n½ cangkir seledri cincang\n2 buah roti bun gandum utuh, belah dua\nDaun selada segar\nIrisan tomat',
          'langkah':
              'Dalam mangkuk besar, kocok cream cheese, mayones, air lemon, dill, garam, dan merica menggunakan mixer atau sendok kayu hingga campuran lembut dan homogen.\nMasukkan salmon yang sudah dihancurkan kasar (gunakan garpu), wortel parut, dan seledri cincang. Aduk rata hingga semua bahan tercampur baik.\nSiapkan roti bun. Jika suka, panggang sebentar agar permukaan dalamnya sedikit kering—ini mencegah roti cepat lembek.\nLetakkan 1–2 lembar daun selada di atas setengah bagian bun.\nAmbil sekitar ½ cangkir campuran salmon, letakkan di atas selada.\nTambahkan 2–3 irisan tomat di atas salmon salad.\nTutup dengan belahan bun bagian atas.\nSajikan segera. Simpan sisa salmon salad di wadah kedap di kulkas (bisa tahan 3–4 hari), tapi jangan simpan dalam bentuk sandwich jadi—akan cepat lembek.',
          'informasi':
              '≈380–420 kalori | lemak 20–24g | kolesterol ~60mg | protein 22–26g | karbohidrat 28–32g',
          'kalori': '400 kkal',
        },
        {
          'title': 'Balsamic Chicken Pasta Salad',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Pasta: 3 cangkir bow tie (farfalle), rebus hingga al dente, bilas air dingin\nAyam: 4 cangkir dada ayam matang, potong dadu\nSayuran: 2 cangkir tomat cincang, ½ cangkir bawang merah cincang\nPelengkap: 4 potong bacon (goreng & remas), ¼ cangkir Gorgonzola hancur\nSaus: ½ cangkir minyak zaitun, ¼ cangkir cuka balsamic, ¼ cangkir daun basil segar cincang, 2 sdm gula merah, 1 sdt bawang putih cincang, garam & merica secukupnya\nTaburan: ½ cangkir Parmesan parut',
          'langkah':
              'Rebus pasta sesuai petunjuk hingga al dente. Tiriskan, lalu bilas segera dengan air dingin agar tidak lembek. Pindahkan ke mangkuk besar.\nTambahkan ayam, tomat, bawang merah, bacon, dan Gorgonzola ke dalam mangkuk berisi pasta.\nDi mangkuk kecil, kocok atau aduk rata minyak zaitun, cuka balsamic, basil, gula merah, bawang putih, garam, dan merica hingga membentuk dressing yang homogen.\nTuangkan dressing ke atas campuran pasta. Aduk perlahan hingga semua bahan terbalut saus secara merata.\nTaburi dengan Parmesan parut sebelum disajikan.\nSajikan segera, atau dinginkan 1–2 jam untuk rasa lebih menyatu (tapi jangan terlalu lama agar pasta tidak lembek).',
          'informasi':
              '≈450–500 kalori | lemak 26–30g | protein 24–28g | karbohidrat 32–36g | natrium ~650 mg',
          'kalori': '475 kkal',
        },
        {
          'title': 'Thai Chicken Wraps',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Ayam: ¾ lb (340g) dada ayam, iris tipis\nBumbu ayam: ½ sdt garlic salt, ¼ sdt merica\nSayuran: 4 cangkir campuran brokoli coleslaw, 1 bawang merah (iris tipis), 1 sdt jahe segar cincang\nSaus kacang: ¼ cangkir gula pasir, ¼ cangkir selai kacang krim, 3 sdm kecap asin, 2–3 sdm air, 2 siung bawang putih cincang\nMinyak: 2 sdm minyak canola (dibagi dua\nKulit: 6 tortilla gandum (8 inci), hangatkan sebelum dipakai\nPelengkap (opsional): irisan daun ketumbar, perasan jeruk nipis',
          'langkah':
              'Buat saus kacang: dalam mangkuk sedang, kocok gula, selai kacang, kecap asin, air, dan bawang putih hingga halus dan menyatu. Sisihkan.\nBumbui ayam: campur irisan ayam dengan garlic salt dan merica.\nMasak ayam: panaskan 1 sdm minyak di wajan besar (cast-iron atau non-stick) di atas api sedang-tinggi. Tumis ayam selama 3–4 menit hingga matang dan tidak berwarna pink. Angkat dan sisihkan.\nTumis sayur: di wajan yang sama, panaskan sisa 1 sdm minyak. Masukkan campuran coleslaw, bawang merah, dan jahe. Tumis 2–3 menit hingga brokoli lembut tapi masih renyah (crisp-tender).\nCampur saus: tuangkan saus kacang ke dalam wajan berisi sayuran. Aduk rata hingga semua terbalut. Matikan api.\nIsi wrap: letakkan ayam dan campuran sayur ke dalam tortilla hangat. Gulung seperti burrito.\nSajikan dengan taburan ketumbar segar dan/atau perasan jeruk nipis untuk kesegaran ekstra.',
          'informasi':
              '≈380–420 kalori | lemak 18–22g | protein 20–24g | karbohidrat 35–40g | natrium ~800 mg',
          'kalori': '400 kkal',
        },
        {
          'title': 'Miso Soup',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Kaldu: 4 cangkir kaldu sayur rendah sodium atau air biasa\nDashi: 2 sdt bubuk dashi (bisa pakai merek Hondashi)\nJahe: 1 inci jahe segar (cukup digeprek, tidak perlu dikupas)\nMiso: ¼ cangkir pasta miso (warna putih/shiro untuk rasa ringan, atau merah/aki untuk rasa kuat)\nTofu: 1 bungkus (16 oz) tofu sutra, potong dadu kecil\nRumput laut: 1 sdm serpih wakame kering (atau nori iris tipis)\nOpsional: 1 sdm kecap asin rendah sodium\nTaburan: 3 batang daun bawang, iris tipis',
          'langkah':
              'Di panci besar atau Dutch oven, masukkan kaldu (atau air), bubuk dashi, dan potongan jahe. Didihkan, lalu kecilkan api. Biarkan simmer (mendidih perlahan) selama 10–15 menit agar jahe meresap.\nAngkat dan buang potongan jahe.\nJangan didihkan lagi. Masukkan tofu, miso, dan wakame.\nAduk miso hingga larut — bisa diaduk langsung di panci, atau dicairkan dulu di mangkuk kecil dengan sedikit kaldu panas lalu dimasukkan kembali.\nBiarkan hangat selama 2–3 menit (jangan sampai mendidih, agar probiotik dalam miso tidak mati).\nTambahkan kecap asin jika suka rasa lebih gurih.\nTuang ke mangkuk saji, taburi dengan daun bawang. Sajikan hangat.',
          'informasi':
              '≈110–140 kalori | lemak 4–6g | protein 8–10g | karbohidrat 8–10g | natrium ~700–900 mg (tergantung miso & kecap)',
          'kalori': '125 kkal',
        },
        {
          'title': 'Italian Grilled Cheese Sandwiches (Pesto Grilled Cheese)',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Roti: 8 potong roti Italia (potong sedang, jangan terlalu tebal)\nPesto: 4 sdm pesto siap pakai (bisa homemade)\nKeju: 4 lembar provolone + 4 lembar mozzarella rendah lemak\nMinyak: 5 sdt minyak zaitun (untuk oles luar)\nPelengkap: saus marinara hangat (untuk cocolan, opsional)',
          'langkah':
              'Ambil 4 potong roti. Oleskan 1 sdm pesto di atas masing-masing.\nTumpuk 1 lembar provolone dan 1 lembar mozzarella di atas pesto.\nTutup dengan sisa 4 potong roti.\nOleskan minyak zaitun tipis-tipis di kedua sisi luar sandwich.\nPanaskan wajan datar (cast-iron atau griddle) di atas api sedang.\nPanggang sandwich selama 3–4 menit per sisi, hingga roti kecokelatan dan keju meleleh sempurna.\nPotong diagonal. Sajikan hangat dengan mangkuk kecil saus marinara untuk cocolan.',
          'informasi':
              '≈350–400 kalori | lemak 20–24g (8–10g jenuh) | protein 16–18g | karbohidrat 28–32g | natrium ~600–800 mg',
          'kalori': '375 kkal',
        },
        {
          'title': 'Spaghetti Squash Casserole',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Spaghetti squash: 1 buah (1½–2 pon), dipanggang & diserut\nDaging: 1 pon dada sapi giling (10–15% lemak)\nSayuran: ½ cangkir bawang bombay cincang, ½ cangkir paprika merah cincang, 1 siung bawang putih cincang\nSaus: 1 cangkir tomat kaleng cincang (dengan airnya)\nBumbu: ½ sdt oregano kering, garam, merica\nKeju & pelengkap: 1 cangkir keju mozzarella/cheddar parut, 1 sdm parsley segar cincang',
          'langkah':
              'Panaskan oven ke 375°F (190°C). Potong spaghetti squash jadi dua memanjang, buang bijinya.\nLetakkan squash dengan sisi potongan menghadap bawah di loyang tahan oven, tambahkan ½ cangkir air. Tutup dengan foil, panggang 20–30 menit hingga empuk.\nSetelah cukup dingin, serut daging squash dengan garpu hingga membentuk “mie”. Turunkan suhu oven ke 350°F (175°C).\nDi wajan, tumis daging sapi, bawang bombay, paprika merah, dan bawang putih hingga daging matang dan sayuran lunak (5–7 menit). Tiriskan lemak berlebih.\nMasukkan tomat kaleng, oregano, garam, merica, dan squash yang sudah diserut. Masak 1–2 menit hingga cairan berkurang.\nTuang campuran ke loyang 1½-quart yang tidak diolesi. Panggang tanpa tutup selama 25 menit.\nTaburi keju dan parsley di atasnya. Diamkan 3–5 menit sebelum disajikan.',
          'informasi':
              '≈380–420 kalori | lemak 20–24g | protein 24–28g | karbohidrat 25–30g (serat 5–7g) | natrium ~550 mg',
          'kalori': '400 kkal',
        },
        {
          'title': 'Roasted Herbed Squash with Goat Cheese',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Labu: 2 buah acorn squash (masing-masing ~1½ pon) + 1 buah butternut squash (5–6 pon), dikupas & dipotong dadu 2 inci\nBumbu panggang: 3 sdm minyak zaitun, 2 sdm thyme segar cincang, 2 sdm rosemary segar cincang, 1 sdm garam kasar, 1 sdt lada hitam kasar\nPelengkap: 1 log (11 oz) keju kambing segar (dihancurkan), 2 sdm parsley segar cincang, 1 sdm sirup maple (hangatkan sedikit)',
          'langkah':
              'Panaskan oven ke 425°F (220°C).\nDalam mangkuk besar, campur semua potongan labu dengan minyak zaitun, thyme, rosemary, garam, dan lada. Aduk rata.\nSebarkan di dua loyang pemanggang berukuran 15×10 inci yang sudah dialasi foil.\nPanggang 30–35 menit, balik sekali dan tukar posisi loyang di rak oven agar matang merata.\nJika ingin lebih karamel, nyalakan broil selama 2–4 menit hingga ujung labu kecokelatan.\nBiarkan agak dingin. Campur lembut dengan keju kambing, taburi parsley, lalu siram dengan sirup maple. Sajikan hangat.',
          'informasi':
              '≈220–250 kalori | lemak 14–16g | protein 6–8g | karbohidrat 20–24g (serat 4–6g) | natrium ~400 mg',
          'kalori': '235 kkal',
        },
        {
          'title': 'Pan-Roasted Chicken and Vegetables (Sheet-Pan Chicken)',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Ayam: 6 paha ayam (±2¼ pon), tanpa kulit\nSayuran: 2 pon kentang merah (potong ¾ inci), 1 bawang bombay besar (cincang kasar)\nBumbu ayam: ½ sdt paprika, ½ sdt garam, ¼ sdt lada hitam\nBumbu sayur: 2 sdm minyak zaitun, 3 siung bawang putih cincang, 1 sdm rosemary segar (atau 1 sdt kering), ¾ sdt garam, ½ sdt lada\nPenyelesaian: 6 cangkir bayam bayi, irisan lemon (opsional)',
          'langkah':
              'Panaskan oven ke 425°F (220°C).\nCampur kentang, bawang, minyak zaitun, bawang putih, rosemary, garam, dan lada dalam mangkuk besar. Aduk rata.\nTuang ke loyang 15×10 inci yang sudah diolesi semprotan masak.\nDi mangkuk kecil, campur paprika, sisa garam & lada. Taburkan ke seluruh permukaan ayam.\nLetakkan ayam di atas campuran sayur. Panggang 35–40 menit hingga suhu internal ayam 170–175°F.\nAngkat ayam, letakkan di piring saji. Taburi bayam di atas sayur yang masih panas di loyang.\nPanggang lagi 8–10 menit hingga bayam layu. Aduk sayur, sajikan dengan ayam. Tambahkan lemon jika suka.',
          'informasi':
              '≈580–620 kalori | lemak 30–34g | protein 38–42g | karbohidrat 38–42g (serat 5–7g) | natrium ~550 mg',
          'kalori': '600 kkal',
        },
        {
          'title': 'Shrimp Corn Stir-Fry',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Udang: 1 pon udang kupas, buang vena\nJagung: 1½ cangkir jagung manis (bisa dari kaleng atau beku)\nSayuran: 1 bawang bombay (iris), 1 paprika merah (iris), 2 siung bawang putih (cincang)\nSaus: 2 sdm kecap asin, 1 sdm madu/sirup maple, 1 sdt jahe parut, 1 sdm minyak wijen, 2 sdm minyak sayur\nPelengkap: irisan daun bawang, wijen panggang',
          'langkah':
              'Panaskan minyak sayur di wajan besar atau wok. Tumis bawang putih dan jahe 30 detik hingga harum.\nMasukkan udang, masak 2–3 menit hingga berubah warna. Angkat, sisihkan.\nDi wajan yang sama, tumis bawang bombay dan paprika merah 2–3 menit hingga lunak.\nMasukkan jagung, aduk hingga hangat. Kembalikan udang ke wajan.\nTuangkan kecap, madu, dan minyak wijen. Aduk cepat 1–2 menit hingga tercampur rata dan mengilap.\nTaburi daun bawang dan wijen. Sajikan hangat dengan nasi.',
          'informasi':
              '≈240–270 kalori | lemak 8–10g | protein 22–25g | karbohidrat 18–22g | natrium ~600 mg',
          'kalori': '255 kkal',
        },
        {
          'title': 'Garden Chickpea Salad',
          'image': 'assets/images/icMakanSiang.png',
          'bahan':
              'Sayuran: ¾ cangkir chickpea (tiris), 1 wortel (iris korek), 1 zucchini kecil (iris korek), 2 daun bawang (iris tipis), ¼ cangkir lobak (iris tipis), ½ cangkir parsley segar (cincang kasar)\nDressing: ¼ cangkir minyak zaitun, ¼ cangkir air lemon, 1 siung bawang putih cincang, ¼ sdt garam, ¼ sdt cayenne, ½ sdt biji jinten (disangrai & dihaluskan)\nTopping: ¼ cangkir feta hancur, 3 sdm walnut cincang\nAlas: 3 cangkir campuran daun salad (spring mix)',
          'langkah':
              'Sangrai biji jinten dalam wajan kering di atas api sedang hingga harum (1–2 menit). Angkat, haluskan sedikit dengan ulekan.\nDalam mangkuk kecil, campur jinten, minyak zaitun, air lemon, bawang putih, garam, dan cayenne. Aduk rata → jadi dressing.\nDi mangkuk besar, campur chickpea, wortel, zucchini, daun bawang, lobak, parsley, feta, dan walnut.\nTuang ⅓ cangkir dressing, aduk rata.\nAtur spring mix di piring saji, letakkan campuran chickpea di atasnya. Siram sisa dressing.',
          'informasi':
              '≈420–460 kalori | lemak 30–34g | protein 12–14g | karbohidrat 28–32g (serat 8–10g) | natrium ~400 mg',
          'kalori': '440 kkal',
        },
      ];
    case "Camilan":
      return [
        {
          'title': 'Sweet Pea Pesto Crostini',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              'Pesto: 12 oz kacang polong beku (dikukus & dinginkan), 4 siung bawang putih, 3 sdm minyak zaitun, ¼ cangkir Parmesan parut, ⅓ cangkir kaldu sayur, 1 sdt cuka beras, ½ sdt garam, ⅛ sdt lemon pepper\nRoti: 1 baguette gandum utuh (12 inci), iris 20 potong\nTopping: 2 cangkir tomat ceri, dibelah dua',
          'langkah':
              'Panaskan broiler.\nHaluskan semua bahan pesto di blender hingga lembut dan mengilap.\nSusun irisan baguette di loyang. Broil 45–60 detik per sisi hingga kecokelatan. Dinginkan di rak.\nOles tiap roti dengan 1 sdm pesto. Taburi dengan tomat ceri segar.\nSajikan segera sebagai appetizer atau camilan sehat.',
          'informasi':
              '≈60–70 kalori | lemak 3–4g | protein 2–3g | karbohidrat 7–8g',
          'kalori': '65 kkal',
        },
        {
          'title': 'Slow-Cooker Marinated Mushrooms',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              '2 pon jamur baby bella/portobello (batang dibuang)\n½ cangkir minyak zaitun\n⅓ cangkir cuka balsamic\n4 siung bawang putih cincang\n1 sdm thyme segar\n1 sdt garam, ½ sdt lada hitam',
          'langkah':
              'Campur semua bahan dalam slow cooker berukuran 4–6 kuart. Aduk perlahan agar jamur terbalut bumbu.\nTutup dan masak dengan pengaturan low selama 4–6 jam (atau high selama 2–3 jam).\nJamur akan menyusut dan menghasilkan kuah kental yang kaya rasa.\nSajikan hangat sebagai lauk vegetarian, topping pasta, atau di atas crostini.',
          'informasi':
              '≈140–160 kalori | lemak 12–14g | protein 3–4g | karbohidrat 6–8g',
          'kalori': '150 kkal',
        },
        {
          'title': 'Mini Zucchini Pizzas',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              '2 zucchini besar, iris melintang ½ inci\n1 sdm minyak zaitun\n¾ cangkir saus tomat rendah gula\n1 cangkir mozzarella parut\nTopping opsional: irisan pepperoni, paprika, oregano kering',
          'langkah':
              'Panaskan oven ke 425°F (220°C). Olesi loyang dengan minyak zaitun.\nSusun irisan zucchini di loyang, oles permukaan atas dengan sedikit minyak.\nPanggang selama 10 menit agar zucchini agak kering (mencegah lembek).\nKeluarkan dari oven. Oles tiap irisan dengan 1 sdt saus tomat. Taburi keju dan topping.\nPanggang lagi selama 8–10 menit hingga keju meleleh dan berwarna keemasan.\nTaburi oregano segar jika suka. Sajikan hangat.',
          'informasi':
              '≈180–200 kalori | lemak 12–14g | protein 10–12g | karbohidrat 8–10g',
          'kalori': '190 kkal',
        },
        {
          'title': 'Chia Seed Protein Bites',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              '1½ cangkir oat quick-cook\n½ cangkir selai kacang alami\n½ cangkir chia seed\n½ cangkir madu murni\n¼ cangkir bubuk protein vanila\n¼ cangkir kelapa parut tidak manis\nTambahan: kelapa parut untuk baluran',
          'langkah':
              'Dalam mangkuk besar, campur semua bahan kecuali kelapa tambahan. Aduk hingga membentuk adonan kalis.\nDinginkan di kulkas selama 1 jam agar adonan mudah dibentuk.\nAmbil sekitar 1 sendok makan adonan, bulatkan jadi bola (±1½ inci).\nGulingkan di atas kelapa parut hingga terbalut rata.\nSimpan dalam wadah kedap di kulkas hingga 1 minggu atau freezer hingga 2 bulan.',
          'informasi':
              '≈110–120 kalori | lemak 6–7g | protein 4–5g | karbohidrat 12–14g',
          'kalori': '115 kkal',
        },
        {
          'title': 'Baked Pot Stickers with Dipping Sauce',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              'Isi: 2 cangkir ayam matang cincang, 1 kaleng water chestnut (8 oz, cincang), ¼ cangkir wortel parut, 4 daun bawang iris, ¼ cangkir mayo rendah lemak, 1 sdm kecap asin, 1 sdt jahe parut\nKulit: 48 lembar wonton wrapper\nSaus: ½ cangkir jelly cabai jalapeño, ¼ cangkir cuka beras, 2 sdm kecap asin',
          'langkah':
              'Panaskan oven ke 425°F (220°C).\nCampur semua bahan isi hingga rata.\nTaruh 2 sdt isian di tengah kulit wonton. Basahi tepi, lipat jadi segitiga, lalu gulung ujungnya seperti permen.\nSusun di loyang yang sudah disemprot. Semprot permukaan dengan cooking spray.\nPanggang 12–15 menit hingga kecokelatan.\nUntuk saus: panaskan jelly di microwave hingga cair, aduk dengan cuka dan kecap. Sajikan hangat.',
          'informasi':
              '≈35–40 kalori | lemak 1–1.5g | protein 2–3g | karbohidrat 4–5g',
          'kalori': '38 kkal',
        },
        {
          'title': 'Sweet Pea Pesto Crostini',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              'Pesto: 12 oz kacang polong segar/beku (diamankan), 4 siung bawang putih (dibelah), 1 sdt cuka beras, ½ sdt garam, ⅛ sdt bumbu lemon-pepper, 3 sdm minyak zaitun, ¼ cangkir Parmesan parut, ⅓ cangkir kaldu sayur\nRoti: 1 potong baguette gandum utuh (12 inci), iris 20 potong setebal ½ inci\nTopping: 2 cangkir tomat ceri, dibelah dua',
          'langkah':
              'Panaskan broiler.\nDi blender, masukkan kacang polong, bawang putih, cuka, garam, dan lemon-pepper. Haluskan.\nTambahkan minyak zaitun perlahan sambil proses berjalan. Lalu tambahkan Parmesan, aduk sebentar. Terakhir, masukkan kaldu sayur hingga mencapai kekentalan yang diinginkan.\nSusun irisan baguette di loyang. Broil 45–60 detik per sisi hingga kecokelatan. Dinginkan di rak.\nOles tiap irisan roti dengan 1 sdm pesto. Taburi dengan potongan tomat ceri.',
          'informasi':
              '≈60–70 kalori | lemak 3–4g | protein 2–3g | karbohidrat 7–8g',
          'kalori': '65 kkal',
        },
        {
          'title': 'Goat Cheese Mushrooms',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              '24 jamur baby portobello (±1 pon), batangnya dibuang\n½ cangkir keju kambing hancur\n½ cangkir paprika merah panggang (cincang, tiriskan)\n4 sdt minyak zaitun\nMerica secukupnya\nPeterseli cincang (untuk hias)',
          'langkah':
              'Panaskan oven ke 375°F (190°C). Olesi loyang 15×10 inci.\nLetakkan jamur dengan sisi cekung menghadap atas.\nIsi tiap jamur dengan 1 sdt keju kambing, lalu 1 sdt paprika merah. Taburi merica.\nSiram dengan minyak zaitun.\nPanggang 15–18 menit hingga jamur empuk.\nTaburi peterseli sebelum saji.',
          'informasi':
              '≈35–40 kalori | lemak 2.5–3g | protein 1–1.5g | karbohidrat 1–2g',
          'kalori': '38 kkal',
        },
        {
          'title': 'Baked Pot Stickers with Dipping Sauce',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              'Isi: 2 cangkir ayam matang cincang halus, 1 kaleng water chestnut (8 oz, cincang), 4 daun bawang (iris tipis), ¼ cangkir wortel parut, ¼ cangkir mayo rendah lemak, 1 putih telur, 1 sdm kecap asin rendah sodium, 1 siung bawang putih (cincang), 1 sdt jahe segar parut\nKulit: 48 lembar wonton wrapper\nSaus: ½ cangkir jelly cabai (jalapeño pepper jelly), ¼ cangkir cuka beras, 2 sdm kecap asin',
          'langkah':
              'Panaskan oven ke 425°F (220°C).\nCampur semua bahan isi hingga rata.\nAmbil 2 sdt isian, taruh di tengah kulit wonton. Basahi tepi kulit, lipat jadi segitiga, lalu gulung seperti permen dan pelintir ujungnya.\nSusun di loyang semprot cooking spray. Semprot bagian atas dengan cooking spray.\nPanggang 12–15 menit hingga cokelat keemasan.\nUntuk saus: panaskan jelly di microwave hingga cair, aduk dengan cuka dan kecap. Sajikan hangat sebagai cocolan.',
          'informasi':
              '≈35–40 kalori | lemak 1–1.5g | protein 2–3g | karbohidrat 4–5g',
          'kalori': '38 kkal',
        },
        {
          'title': 'Best Deviled Eggs',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              '12 butir telur rebus, dikupas\n½ cangkir mayones\n2 sdm susu 2%\n1 sdt parsley kering\n½ sdt dill weed\n½ sdt daun kucai cincang\n½ sdt mustard bubuk\n¼ sdt garam\n¼ sdt paprika\n⅛ sdt bawang putih bubuk\n⅛ sdt merica\nParsley segar & paprika (untuk taburan)',
          'langkah':
              'Rebus telur hingga matang (12 menit), lalu rendam di air es hingga dingin. Kupas.\nPotong memanjang, ambil kuningnya, taruh di mangkuk.\nHaluskan kuning telur, lalu campur dengan mayones, susu, dan semua bumbu. Aduk hingga krim.\nMasukkan campuran ke piping bag atau kantong plastik dengan ujung digunting.\nIsi kembali putih telur dengan campuran kuning.\nTaburi parsley dan paprika. Dinginkan hingga siap saji.',
          'informasi': '≈73 kalori | lemak 6g | protein 3g | karbohidrat 0g',
          'kalori': '73 kkal',
        },
        {
          'title': 'Fresh from the Garden Wraps',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              '1 tongkol jagung manis, dipipil\n1 mentimun, cincang\n1 cangkir kol iris halus\n1 tomat, cincang\n1 bawang merah kecil, cincang\n1 cabai jalapeño, buang biji, cincang\n1 sdm masing-masing: basil, cilantro, mint\nSaus: ⅓ cangkir saus cabai Thailand, 3 sdm cuka beras, 2 sdt kecap asin rendah sodium, 2 sdt selai kacang krim\n8 lembar daun selada Bibb/Boston',
          'langkah':
              'Campur semua sayur dan jagung dalam mangkuk besar.\nDalam mangkuk kecil, aduk rata saus cabai, cuka, kecap, dan selai kacang hingga halus.\nTuang saus ke campuran sayur, aduk rata. Diamkan 20 menit agar bumbu meresap.\nGunakan sendok berlubang untuk mengambil isian (agar tidak terlalu berair).\nTaruh ½ cangkir isian di tengah tiap daun selada, lalu lipat seperti taco.',
          'informasi':
              '≈80–90 kalori | lemak 3–4g | protein 2–3g | karbohidrat 12–14g',
          'kalori': '85 kkal',
        },
        {
          'title': 'Curried Chicken Meatball Wraps',
          'image': 'assets/images/icCamilan.png',
          'bahan':
              'Bakso: 1 butir telur, 1 bawang kecil (cincang halus), ½ cangkir Rice Krispies, ¼ cangkir kismis, ¼ cangkir cilantro, 2 sdt bubuk kari, ½ sdt garam, 1 pon daging ayam giling\nSaus: 1 cangkir yoghurt plain\nIsi wrap: 24 lembar daun selada Bibb/Boston, 1 wortel parut, ½ cangkir kismis, ½ cangkir kacang tanah asin cincang, cilantro segar',
          'langkah':
              'Panaskan oven ke 350°F (175°C).\nCampur semua bahan bakso (kecuali ayam). Masukkan ayam, aduk rata.\nBentuk jadi 24 bakso kecil (±1¼ inci), letakkan di rak di atas loyang.\nPanggang 17–20 menit hingga matang.\nCampur yoghurt dan cilantro untuk saus.\nSiapkan daun selada. Isi tiap daun dengan 1 bakso, 2 sdt saus, wortel, kismis, kacang, dan cilantro.',
          'informasi':
              '≈90–100 kalori | lemak 4–5g | protein 6–7g | karbohidrat 8–9g',
          'kalori': '95 kkal',
        },
      ];
    case "Smoothies":
      return [
        {
          'title': 'Cranberry-Banana Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 buah pisang besar, dikupas, dibagi 4 & dibekukan\n⅔ cangkir saus cranberry utuh (whole-berry)\n½ cangkir yogurt vanila bebas lemak\n½ cangkir es batu',
          'langkah':
              'Masukkan semua bahan ke dalam blender.\nTutup blender, lalu proses hingga halus dan lembut (sekitar 30–45 detik).\nTuang ke gelas saji, sajikan segera selagi dingin.',
          'informasi':
              '≈220–250 kalori | lemak 1–2g | protein 5–6g | karbohidrat 48–52g (serat 3–4g, gula alami dari buah & cranberry)',
          'kalori': '235 kkal',
        },
        {
          'title': 'Pineapple Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 kaleng (20 oz) potongan nanas tanpa pemanis\n1 cangkir buttermilk\n2 sdt ekstrak vanila\n2 sdt gula pasir (opsional, bisa diganti madu)\n½ cangkir jus nanas (dipisahkan saat meniriskan)',
          'langkah':
              'Tiriskan nanas, sisakan ½ cangkir jusnya.\nBekukan potongan nanas selama minimal 1–2 jam (atau semalaman).\nMasukkan nanas beku, jus nanas, buttermilk, vanila, dan gula ke dalam blender.\nBlender hingga halus dan creamy.\nSajikan segera dalam gelas dingin.',
          'informasi':
              '≈180–200 kalori | lemak 2–3g | protein 6–7g | karbohidrat 34–38g',
          'kalori': '190 kkal',
        },
        {
          'title': 'Cucumber-Melon Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '2 cangkir yogurt Yunani rendah lemak (plain)\n⅓ cangkir madu\n3 cangkir melon madu (honeydew), potong\n2 mentimun ukuran sedang, dikupas, dibuang bijinya, dipotong\n1–2 sdm daun mint segar (opsional)\n2 cangkir es batu hancur',
          'langkah':
              'Masukkan setengah dari tiap bahan ke dalam blender: yogurt, madu, melon, mentimun, dan mint.\nTutup dan blender hingga halus.\nTambahkan 1 cangkir es batu, blender lagi hingga lembut.\nTuang ke 3 gelas. Ulangi dengan sisa bahan untuk porsi kedua.',
          'informasi':
              '≈160–180 kalori | lemak 0–1g | protein 7–9g | karbohidrat 28–32g',
          'kalori': '170 kkal',
        },
        {
          'title': 'Tropical Berry Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 cangkir jus pina colada (tanpa alkohol)\n1 cup (6 oz) yogurt vanila\n⅓ cangkir stroberi beku (tanpa pemanis)\n¼ cangkir potongan mangga beku\n¼ cangkir blueberry beku (tanpa pemanis)',
          'langkah':
              'Masukkan semua bahan ke dalam blender.\nTutup, lalu proses selama 30 detik atau hingga halus dan creamy.\nTuang ke gelas dingin, sajikan segera.',
          'informasi':
              '≈200–230 kalori | lemak 3–4g | protein 6–8g | karbohidrat 36–40g',
          'kalori': '215 kkal',
        },
        {
          'title': 'Avocado Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 buah pisang besar, beku\n½ buah alpukat matang\n½ cangkir yogurt vanila bebas lemak\n½ cangkir susu almond atau susu sapi\n1–2 sdt madu (opsional)',
          'langkah':
              'Masukkan semua bahan ke dalam blender.\nBlender hingga lembut dan creamy (tambahkan sedikit air/susu jika terlalu kental).\nSajikan segera — cocok untuk sarapan atau camilan pascapelatihan.',
          'informasi':
              '≈280–320 kalori | lemak 14–18g (sehat) | protein 7–9g | karbohidrat 28–32g',
          'kalori': '300 kkal',
        },
        {
          'title': 'Chocolate Avocado Bliss Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '½ buah alpukat matang\n1 sdm bubuk kakao alami (unsweetened)\n1 pisang beku\n1 sdm selai kacang alami\n1 cangkir susu almond tanpa pemanis\n1 sdm chia seed (opsional)\n1 sdt madu (opsional)',
          'langkah':
              'Masukkan semua bahan ke dalam blender.\nBlender hingga halus, kental, dan creamy (tambahkan air jika terlalu kental).\nTuang ke gelas tinggi, taburi bubuk kakao sedikit di atas.\nSajikan segera sebagai pengganti dessert sehat.',
          'informasi':
              '≈340 kalori | lemak 20g | protein 9g | karbohidrat 32g (serat 12g)',
          'kalori': '340 kkal',
        },
        {
          'title': 'Golden Turmeric Immunity Boost',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 cangkir nanas beku\n½ cangkir wortel parut (mentah)\n½ cangkir yogurt Yunani\n½ inci jahe segar, kupas\n¼ sdt kunyit bubuk\n1 sdt madu\n½ cangkir air kelapa',
          'langkah':
              'Masukkan semua bahan ke blender.\nProses hingga benar-benar halus (wortel harus lembut).\nTuang ke gelas, hias dengan sejumput lada hitam (untuk tingkatkan penyerapan kurkumin).',
          'informasi': '≈210 kalori | lemak 2g | protein 12g | karbohidrat 36g',
          'kalori': '210 kkal',
        },
        {
          'title': 'Midnight Blueberry Beet Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '½ bit matang ukuran kecil (direbus/dikukus, dinginkan)\n¾ cangkir blueberry beku\n1 pisang kecil beku\n1 cangkir susu oat\n1 sdm biji rami giling\nPerasan jeruk nipis (opsional)',
          'langkah':
              'Potong bit kecil-kecil agar mudah diblender.\nMasukkan semua bahan ke blender, tambahkan jeruk nipis jika suka rasa segar.\nBlender hingga warna ungu merata dan tekstur halus.\nSajikan dingin.',
          'informasi':
              '≈270 kalori | lemak 6g | protein 6g | karbohidrat 48g (serat 10g)',
          'kalori': '270 kkal',
        },
        {
          'title': 'Green Zen Matcha Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 cangkir bayam segar\n½ apel hijau, potong\n1 pisang beku\n1 sdt matcha berkualitas\n1 cangkir susu almond\n1 sdm biji chia\n1 sdt madu',
          'langkah':
              'Blender bayam dan susu dulu hingga halus (mengurangi rasa “rumput”).\nTambahkan sisa bahan, blender lagi hingga lembut.\nTuang ke gelas, taburi sedikit matcha kering di atas.',
          'informasi':
              '≈220 kalori | lemak 7g | protein 7g | karbohidrat 34g (serat 8g)',
          'kalori': '220 kkal',
        },
        {
          'title': 'Creamy Peach Oat Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 cangkir persik beku (segar juga boleh)\n¼ cangkir oat quick-cook\n½ cangkir yogurt Yunani\n½ cangkir susu susu sapi/soy\n1 sdt ekstrak vanila\n1 sdt sirup maple',
          'langkah':
              'Rendam oat dalam susu selama 2 menit dulu agar lebih lembut.\nMasukkan semua bahan ke blender, proses hingga kental dan creamy.\nSajikan dengan taburan oat dan irisan persik.',
          'informasi':
              '≈260 kalori | lemak 5g | protein 14g | karbohidrat 42g (serat 5g)',
          'kalori': '260 kkal',
        },
        {
          'title': 'Raspberry Mint Refresher',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 cangkir raspberry beku\n½ cangkir stroberi beku\n½ cangkir mentimun kupas, potong\n10 lembar daun mint segar\n1 cangkir air kelapa\n1 sdt jus lemon',
          'langkah':
              'Masukkan semua bahan ke blender.\nBlender hingga halus dan menyegarkan.\nSaring jika ingin tekstur super halus (opsional).\nSajikan dengan daun mint segar.',
          'informasi':
              '≈130 kalori | lemak 1g | protein 2g | karbohidrat 30g (serat 7g)',
          'kalori': '130 kkal',
        },
        {
          'title': 'Tropical Coconut Lime Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 cangkir mangga beku\n½ cangkir nanas beku\n½ cangkir santan ringan (light coconut milk)\n½ cangkir air kelapa\n1 sdm air jeruk nipis\n1 sdt parutan kulit jeruk nipis (opsional)',
          'langkah':
              'Masukkan semua bahan ke blender.\nProses hingga halus dan harum.\nTuang ke gelas, hias dengan irisan nipis.',
          'informasi': '≈220 kalori | lemak 10g | protein 3g | karbohidrat 30g',
          'kalori': '220 kkal',
        },
        {
          'title': 'Spiced Chai Banana Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 pisang beku\n1 cangkir susu almond hangat\n¼ sdt bubuk kayu manis\nSejumput bubuk jahe, cengkeh, pala\n1 sdm almond butter\n1 sdt madu',
          'langkah':
              'Panaskan susu almond sebentar (jangan sampai mendidih).\nMasukkan semua bahan ke blender, proses hingga creamy.\nSajikan hangat atau dingin, sesuai selera.',
          'informasi': '≈290 kalori | lemak 16g | protein 7g | karbohidrat 32g',
          'kalori': '290 kkal',
        },
        {
          'title': 'Coffee Banana Protein Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '½ cangkir kopi dingin (atau espresso dingin)\n1 pisang beku\n1 scoop protein vanila (whey atau nabati)\n½ cangkir susu susu sapi/soy\n1 sdm almond butter\nEs batu secukupnya',
          'langkah':
              'Masukkan semua bahan ke blender.\nBlender hingga lembut dan kental seperti milkshake.\nSajikan sebagai pengganti sarapan tinggi protein.',
          'informasi':
              '≈320 kalori | lemak 14g | protein 25g | karbohidrat 26g',
          'kalori': '320 kkal',
        },
        {
          'title': 'Purple Power Acai Bowl Smoothie',
          'image': 'assets/images/icSmoothies.png',
          'bahan':
              '1 bungkus (100g) pure acai beku\n½ cangkir blueberry beku\n½ pisang beku\n½ cangkir susu almond\nTopping: granola, irisan kiwi, biji chia, kelapa parut',
          'langkah':
              'Blender acai, blueberry, pisang, dan susu hingga sangat kental (seperti es krim).\nTuang ke mangkuk, jangan ke gelas.\nTaburi topping sesuai selera.\nNikmati dengan sendok!',
          'informasi':
              '≈280 kalori | lemak 12g | protein 6g | karbohidrat 38g (serat 9g)',
          'kalori': '280 kkal',
        },
      ];
    case "Jamu":
      return [
        {
          'title': 'Sweet Pea Pesto Crostini',
          'image': 'assets/images/icJamu.png',
          'bahan':
              'Pesto: 12 oz kacang polong beku (dikukus & dinginkan), 4 siung bawang putih, 3 sdm minyak zaitun, ¼ cangkir Parmesan parut, ⅓ cangkir kaldu sayur, 1 sdt cuka beras, ½ sdt garam, ⅛ sdt lemon pepper\nRoti: 1 baguette gandum utuh (12 inci), iris 20 potong\nTopping: 2 cangkir tomat ceri, dibelah dua',
          'langkah':
              'Panaskan broiler.\nHaluskan semua bahan pesto di blender hingga lembut dan mengilap.\nSusun irisan baguette di loyang. Broil 45–60 detik per sisi hingga kecokelatan. Dinginkan di rak.\nOles tiap roti dengan 1 sdm pesto. Taburi dengan tomat ceri segar.\nSajikan segera sebagai appetizer atau camilan sehat.',
          'informasi':
              '≈60–70 kalori | lemak 3–4g | protein 2–3g | karbohidrat 7–8g',
          'kalori': '65 kkal',
        },
        {
          'title': 'Slow-Cooker Marinated Mushrooms',
          'image': 'assets/images/icJamu.png',
          'bahan':
              '2 pon jamur baby bella/portobello (batang dibuang)\n½ cangkir minyak zaitun\n⅓ cangkir cuka balsamic\n4 siung bawang putih cincang\n1 sdm thyme segar\n1 sdt garam, ½ sdt lada hitam',
          'langkah':
              'Campur semua bahan dalam slow cooker berukuran 4–6 kuart. Aduk perlahan agar jamur terbalut bumbu.\nTutup dan masak dengan pengaturan low selama 4–6 jam (atau high selama 2–3 jam).\nJamur akan menyusut dan menghasilkan kuah kental yang kaya rasa.\nSajikan hangat sebagai lauk vegetarian, topping pasta, atau di atas crostini.',
          'informasi':
              '≈140–160 kalori | lemak 12–14g | protein 3–4g | karbohidrat 6–8g',
          'kalori': '150 kkal',
        },
        {
          'title': 'Mini Zucchini Pizzas',
          'image': 'assets/images/icJamu.png',
          'bahan':
              '2 zucchini besar, iris melintang ½ inci\n1 sdm minyak zaitun\n¾ cangkir saus tomat rendah gula\n1 cangkir mozzarella parut\nTopping opsional: irisan pepperoni, paprika, oregano kering',
          'langkah':
              'Panaskan oven ke 425°F (220°C). Olesi loyang dengan minyak zaitun.\nSusun irisan zucchini di loyang, oles permukaan atas dengan sedikit minyak.\nPanggang selama 10 menit agar zucchini agak kering (mencegah lembek).\nKeluarkan dari oven. Oles tiap irisan dengan 1 sdt saus tomat. Taburi keju dan topping.\nPanggang lagi selama 8–10 menit hingga keju meleleh dan berwarna keemasan.\nTaburi oregano segar jika suka. Sajikan hangat.',
          'informasi':
              '≈180–200 kalori | lemak 12–14g | protein 10–12g | karbohidrat 8–10g',
          'kalori': '190 kkal',
        },
        {
          'title': 'Chia Seed Protein Bites',
          'image': 'assets/images/icJamu.png',
          'bahan':
              '1½ cangkir oat quick-cook\n½ cangkir selai kacang alami\n½ cangkir chia seed\n½ cangkir madu murni\n¼ cangkir bubuk protein vanila\n¼ cangkir kelapa parut tidak manis\nTambahan: kelapa parut untuk baluran',
          'langkah':
              'Dalam mangkuk besar, campur semua bahan kecuali kelapa tambahan. Aduk hingga membentuk adonan kalis.\nDinginkan di kulkas selama 1 jam agar adonan mudah dibentuk.\nAmbil sekitar 1 sendok makan adonan, bulatkan jadi bola (±1½ inci).\nGulingkan di atas kelapa parut hingga terbalut rata.\nSimpan dalam wadah kedap di kulkas hingga 1 minggu atau freezer hingga 2 bulan.',
          'informasi':
              '≈110–120 kalori | lemak 6–7g | protein 4–5g | karbohidrat 12–14g',
          'kalori': '115 kkal',
        },
        {
          'title': 'Baked Pot Stickers with Dipping Sauce',
          'image': 'assets/images/icJamu.png',
          'bahan':
              'Isi: 2 cangkir ayam matang cincang, 1 kaleng water chestnut (8 oz, cincang), ¼ cangkir wortel parut, 4 daun bawang iris, ¼ cangkir mayo rendah lemak, 1 sdm kecap asin, 1 sdt jahe parut\nKulit: 48 lembar wonton wrapper\nSaus: ½ cangkir jelly cabai jalapeño, ¼ cangkir cuka beras, 2 sdm kecap asin',
          'langkah':
              'Panaskan oven ke 425°F (220°C).\nCampur semua bahan isi hingga rata.\nTaruh 2 sdt isian di tengah kulit wonton. Basahi tepi, lipat jadi segitiga, lalu gulung ujungnya seperti permen.\nSusun di loyang yang sudah disemprot. Semprot permukaan dengan cooking spray.\nPanggang 12–15 menit hingga kecokelatan.\nUntuk saus: panaskan jelly di microwave hingga cair, aduk dengan cuka dan kecap. Sajikan hangat.',
          'informasi':
              '≈35–40 kalori | lemak 1–1.5g | protein 2–3g | karbohidrat 4–5g',
          'kalori': '38 kkal',
        },
        {
          'title': 'Sweet Pea Pesto Crostini',
          'image': 'assets/images/icJamu.png',
          'bahan':
              'Pesto: 12 oz kacang polong segar/beku (diamankan), 4 siung bawang putih (dibelah), 1 sdt cuka beras, ½ sdt garam, ⅛ sdt bumbu lemon-pepper, 3 sdm minyak zaitun, ¼ cangkir Parmesan parut, ⅓ cangkir kaldu sayur\nRoti: 1 potong baguette gandum utuh (12 inci), iris 20 potong setebal ½ inci\nTopping: 2 cangkir tomat ceri, dibelah dua',
          'langkah':
              'Panaskan broiler.\nDi blender, masukkan kacang polong, bawang putih, cuka, garam, dan lemon-pepper. Haluskan.\nTambahkan minyak zaitun perlahan sambil proses berjalan. Lalu tambahkan Parmesan, aduk sebentar. Terakhir, masukkan kaldu sayur hingga mencapai kekentalan yang diinginkan.\nSusun irisan baguette di loyang. Broil 45–60 detik per sisi hingga kecokelatan. Dinginkan di rak.\nOles tiap irisan roti dengan 1 sdm pesto. Taburi dengan potongan tomat ceri.',
          'informasi':
              '≈60–70 kalori | lemak 3–4g | protein 2–3g | karbohidrat 7–8g',
          'kalori': '65 kkal',
        },
        {
          'title': 'Goat Cheese Mushrooms',
          'image': 'assets/images/icJamu.png',
          'bahan':
              '24 jamur baby portobello (±1 pon), batangnya dibuang\n½ cangkir keju kambing hancur\n½ cangkir paprika merah panggang (cincang, tiriskan)\n4 sdt minyak zaitun\nMerica secukupnya\nPeterseli cincang (untuk hias)',
          'langkah':
              'Panaskan oven ke 375°F (190°C). Olesi loyang 15×10 inci.\nLetakkan jamur dengan sisi cekung menghadap atas.\nIsi tiap jamur dengan 1 sdt keju kambing, lalu 1 sdt paprika merah. Taburi merica.\nSiram dengan minyak zaitun.\nPanggang 15–18 menit hingga jamur empuk.\nTaburi peterseli sebelum saji.',
          'informasi':
              '≈35–40 kalori | lemak 2.5–3g | protein 1–1.5g | karbohidrat 1–2g',
          'kalori': '38 kkal',
        },
        {
          'title': 'Baked Pot Stickers with Dipping Sauce',
          'image': 'assets/images/icJamu.png',
          'bahan':
              'Isi: 2 cangkir ayam matang cincang halus, 1 kaleng water chestnut (8 oz, cincang), 4 daun bawang (iris tipis), ¼ cangkir wortel parut, ¼ cangkir mayo rendah lemak, 1 putih telur, 1 sdm kecap asin rendah sodium, 1 siung bawang putih (cincang), 1 sdt jahe segar parut\nKulit: 48 lembar wonton wrapper\nSaus: ½ cangkir jelly cabai (jalapeño pepper jelly), ¼ cangkir cuka beras, 2 sdm kecap asin',
          'langkah':
              'Panaskan oven ke 425°F (220°C).\nCampur semua bahan isi hingga rata.\nAmbil 2 sdt isian, taruh di tengah kulit wonton. Basahi tepi kulit, lipat jadi segitiga, lalu gulung seperti permen dan pelintir ujungnya.\nSusun di loyang semprot cooking spray. Semprot bagian atas dengan cooking spray.\nPanggang 12–15 menit hingga cokelat keemasan.\nUntuk saus: panaskan jelly di microwave hingga cair, aduk dengan cuka dan kecap. Sajikan hangat sebagai cocolan.',
          'informasi':
              '≈35–40 kalori | lemak 1–1.5g | protein 2–3g | karbohidrat 4–5g',
          'kalori': '38 kkal',
        },
        {
          'title': 'Best Deviled Eggs',
          'image': 'assets/images/icJamu.png',
          'bahan':
              '12 butir telur rebus, dikupas\n½ cangkir mayones\n2 sdm susu 2%\n1 sdt parsley kering\n½ sdt dill weed\n½ sdt daun kucai cincang\n½ sdt mustard bubuk\n¼ sdt garam\n¼ sdt paprika\n⅛ sdt bawang putih bubuk\n⅛ sdt merica\nParsley segar & paprika (untuk taburan)',
          'langkah':
              'Rebus telur hingga matang (12 menit), lalu rendam di air es hingga dingin. Kupas.\nPotong memanjang, ambil kuningnya, taruh di mangkuk.\nHaluskan kuning telur, lalu campur dengan mayones, susu, dan semua bumbu. Aduk hingga krim.\nMasukkan campuran ke piping bag atau kantong plastik dengan ujung digunting.\nIsi kembali putih telur dengan campuran kuning.\nTaburi parsley dan paprika. Dinginkan hingga siap saji.',
          'informasi': '≈73 kalori | lemak 6g | protein 3g | karbohidrat 0g',
          'kalori': '73 kkal',
        },
        {
          'title': 'Fresh from the Garden Wraps',
          'image': 'assets/images/icJamu.png',
          'bahan':
              '1 tongkol jagung manis, dipipil\n1 mentimun, cincang\n1 cangkir kol iris halus\n1 tomat, cincang\n1 bawang merah kecil, cincang\n1 cabai jalapeño, buang biji, cincang\n1 sdm masing-masing: basil, cilantro, mint\nSaus: ⅓ cangkir saus cabai Thailand, 3 sdm cuka beras, 2 sdt kecap asin rendah sodium, 2 sdt selai kacang krim\n8 lembar daun selada Bibb/Boston',
          'langkah':
              'Campur semua sayur dan jagung dalam mangkuk besar.\nDalam mangkuk kecil, aduk rata saus cabai, cuka, kecap, dan selai kacang hingga halus.\nTuang saus ke campuran sayur, aduk rata. Diamkan 20 menit agar bumbu meresap.\nGunakan sendok berlubang untuk mengambil isian (agar tidak terlalu berair).\nTaruh ½ cangkir isian di tengah tiap daun selada, lalu lipat seperti taco.',
          'informasi':
              '≈80–90 kalori | lemak 3–4g | protein 2–3g | karbohidrat 12–14g',
          'kalori': '85 kkal',
        },
        {
          'title': 'Curried Chicken Meatball Wraps',
          'image': 'assets/images/icJamu.png',
          'bahan':
              'Bakso: 1 butir telur, 1 bawang kecil (cincang halus), ½ cangkir Rice Krispies, ¼ cangkir kismis, ¼ cangkir cilantro, 2 sdt bubuk kari, ½ sdt garam, 1 pon daging ayam giling\nSaus: 1 cangkir yoghurt plain\nIsi wrap: 24 lembar daun selada Bibb/Boston, 1 wortel parut, ½ cangkir kismis, ½ cangkir kacang tanah asin cincang, cilantro segar',
          'langkah':
              'Panaskan oven ke 350°F (175°C).\nCampur semua bahan bakso (kecuali ayam). Masukkan ayam, aduk rata.\nBentuk jadi 24 bakso kecil (±1¼ inci), letakkan di rak di atas loyang.\nPanggang 17–20 menit hingga matang.\nCampur yoghurt dan cilantro untuk saus.\nSiapkan daun selada. Isi tiap daun dengan 1 bakso, 2 sdt saus, wortel, kismis, kacang, dan cilantro.',
          'informasi':
              '≈90–100 kalori | lemak 4–5g | protein 6–7g | karbohidrat 8–9g',
          'kalori': '95 kkal',
        },
      ];
    default:
      return [];
  }
}
