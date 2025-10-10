import 'dart:math';

import 'package:flutter/material.dart';

class OgrListe extends StatelessWidget {
  const OgrListe({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> isimler = [
      "Bekir",
      "Turgut",
      "Abdulkadir",
      "Hasan",
      "Batuhan",
      "Hüseyin",
      "İbrahim",
      "Feyyaz",
      "Emir",
      "Yasir",
      "Yusuf",
      "Ömer",
      "Oğuzhan",
      "İlker",
      "Zekeriya",
      "Can",
      "Yunus",
    ];
    List<String> soyisimler = [
      "Hapoğlu",
      "Alagöz",
      "Kılıçkan",
      "Taşan",
      "Dikmen",
      "Kaya",
      "Çabuk",
      "Öztürk",
      "Kurnaz",
      "Coşkun",
      "Erkaya",
      "Demirkılıç",
      "Aslanpay",
      "Akıncı",
      "Kılıç"
    ];
    int elemansayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> Ogrenciler = List.generate(
        elemansayisi,
        (index) => Ogrenci(index + 1, isimler[Random().nextInt(isimler.length)],
            soyisimler[Random().nextInt(soyisimler.length)]));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ögrenci Listesi",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(Ogrenciler[index].id.toString()),
              ),
              title: Text(Ogrenciler[index].isim),
              subtitle: Text(Ogrenciler[index].soyisim),
            );
          },
          itemCount: elemansayisi),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
