import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
/*
class TarihVeSaatIslemleri extends StatefulWidget {
  const TarihVeSaatIslemleri({super.key});

  @override
  State<TarihVeSaatIslemleri> createState() => _TarihVeSaatIslemleriState();
}

class _TarihVeSaatIslemleriState extends State<TarihVeSaatIslemleri> {
  @override
  DateTime suan = DateTime.now();
  DateTime suan_yil = DateTime(suan.year);
  DateTime UcAyOnce = DateTime(suan.year,suan.month);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarih ve Saat"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  print(suan);
                  showDatePicker(
                      barrierLabel: "Tarih Seçiniz",

                      context: context,
                      initialDate: suan,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                      barrierColor: Colors.amber);
                },
                child: Text("Tarih Seç")),
            ElevatedButton(onPressed: () {}, child: Text("Saat Seç")),
          ],
        ),
      ),
    );
  }
}
*/