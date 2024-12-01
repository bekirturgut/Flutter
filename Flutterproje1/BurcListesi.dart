

import 'package:flutter/material.dart';
import 'package:proje_1/Burc.dart';
import 'package:proje_1/BurcItem.dart';
import 'package:proje_1/data/strings.dart';

class BurcListesi extends StatelessWidget {
  List<Burc> tumBurclar = [];

  BurcListesi() {
    tumBurclar = VeriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black54,
        title: Text(
          "Burçlar Listesine Hosşgeldiniz",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return BurcItem(Listelenen: tumBurclar[index]);
            },
            itemCount: tumBurclar.length),
      ),
    );
  }

  List<Burc> VeriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      Burc Eklenecek = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_KUCUK_LINKLERI[i],
          Strings.BURC_BUYUK_LINKLERI[i]);
      gecici.add(Eklenecek);
    }
    return gecici;
  }
}
