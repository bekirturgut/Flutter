import 'package:flutter/material.dart';
import 'package:proje2/sabitler.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;

  const OrtalamaGoster({
    required this.ortalama,
    required this.dersSayisi,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? "$dersSayisi Ders" : "Ders Giriniz",
          style: Sabitler.dersSayisi,
        ),
        Text(
          ortalama > 0 ? "${ortalama.toStringAsFixed(2)}" : "?",
          style: Sabitler.Ortalama,
        ),
        Text(
          "Ortalama",
          style: Sabitler.dersSayisi,
        ),
      ],
    );
  }
}
