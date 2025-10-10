import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rasgelesayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text("Kırmızı Sayfa"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bu Sayfa Kırmızı",
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (Navigator.canPop(context)) { //öncesinde eleman varmı yokmu böyle öğrenebilirsin  
                      print("Evet Olabilir");
                      Navigator.of(context).pop();
                    } else
                      print("Hayır olamaz");
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text(
                    "Sarı Sayfaya Gir Android",
                    style: TextStyle(color: Colors.yellow),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
