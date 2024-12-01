import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ders_3_navigator/Ogrenci_Listesi.dart';
import 'package:flutter_ders_3_navigator/green_page.dart';
import 'package:flutter_ders_3_navigator/main.dart';
import 'package:flutter_ders_3_navigator/red_page.dart';
import 'package:flutter_ders_3_navigator/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _RoteOlustur(
      Widget GidilecekRota, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      // IOS mu Android mi kontrolünü yapar
      return CupertinoPageRoute(settings: settings, builder: (context) => GidilecekRota);
    } else
      return MaterialPageRoute(settings: settings,builder: (context) => GidilecekRota);
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        {
          return _RoteOlustur(AnaSayfa(), settings);
        }
      case "/RedPage":
        {
          return _RoteOlustur(RedPage(), settings);
        }
      case "/YellowPage":
        {
          return _RoteOlustur(Yellow_page(), settings);
        }
      case "/GreenPage":
        {
          return _RoteOlustur(GreenPage(), settings);
        }
      case "/OgrenciListe":
        {
          return _RoteOlustur(OgrListe(), settings);
        }
      default:
        {
          return MaterialPageRoute(
              builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text("404 Found"),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Herhangi Bir Sayfa Bulunamadı...",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              onPressed: () {
                                Navigator.of(context).maybePop();
                              },
                              child: Text(
                                "Geri Gitmek İçin Tıkla",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                  ));
        }
    }
  }
}
