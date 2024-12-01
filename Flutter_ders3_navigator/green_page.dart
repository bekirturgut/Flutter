import 'package:flutter/material.dart';
import 'package:flutter_ders_3_navigator/yellow_page.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeşil Sayfa"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Bu Sayfa Yeşil",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      //stack deki son elemanla yer değiştirir.
                      MaterialPageRoute(builder: (context) => Yellow_page()));
                },
                child: Text(
                  "Geri Dön",
                  style: TextStyle(fontSize: 35, color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
