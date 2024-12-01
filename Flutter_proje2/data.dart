import 'package:flutter/material.dart';
import 'package:proje2/widgets/ders_goster.dart';

class HarfNotlar {
  static List<Ders> tumeklenendersler = [];
  static dersEkle(Ders ders) => tumeklenendersler.add(ders);

  static double ortalamaHesapla() {
    double toplamNot = 0;
    double toplamKredi = 0;

    tumeklenendersler.forEach((eleman) {
          toplamNot = toplamNot + (eleman.kredidegeri * eleman.harfdegeri);
          toplamKredi += eleman.kredidegeri;
        });
    return toplamNot/toplamKredi;
  }

  static List<String> _tumHarfler = [
    "AA",
    "BA",
    "BB",
    "CB",
    "CC",
    "DC",
    "DD",
    "FD"
  ];

  static List<int> _tumkrediler() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static double _harfnotyap(String harf) {
    switch (harf) {
      case "AA":
        return 4;
      case "BA":
        return 3.5;
      case "BB":
        return 3;
      case "CB":
        return 2.5;
      case "CC":
        return 2;
      case "DC":
        return 1.5;
      case "DD":
        return 1;
      case "FD":
        return 0.5;
      case "FF":
        return 0;
      default:
        return 0;
    }
  }

  static List<DropdownMenuItem<double>> tumderslerinharfleri() {
    return _tumHarfler
        .map((e) => DropdownMenuItem(
              child: Text(e),
              value: _harfnotyap(e),
            ))
        .toList();
  }

  static List<DropdownMenuItem<double>> tumderslerinkredileri() {
    return _tumkrediler()
        .map((e) =>
            DropdownMenuItem(child: Text(e.toString()), value: e.toDouble()))
        .toList();
  }
}
