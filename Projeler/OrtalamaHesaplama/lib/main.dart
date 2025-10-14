import 'package:flutter/material.dart';
import 'package:ortalamahesaplamaproje/sabitler.dart';
import 'package:ortalamahesaplamaproje/widgets/ortalama_hesaplama_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Sabitler.AnaRenk,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      title: "Dinamik Not Ortalama",
      home: ortalama_hesaplama_page(),
    );
  }
}
