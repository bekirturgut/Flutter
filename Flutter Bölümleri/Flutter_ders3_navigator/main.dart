import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ders_3_navigator/Route_generator.dart';
import 'package:flutter_ders_3_navigator/green_page.dart';
import 'package:flutter_ders_3_navigator/red_page.dart';
import 'package:flutter_ders_3_navigator/yellow_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      /*
      routes: {
        "/RedPage": (context) => RedPage(),
        "/YellowPage": (context) => Yellow_page(),
        "/GreenPage": (context) => GreenPage(),
        "/": (context) => AnaSayfa()
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
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
              )),
      */
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  AnaSayfa({
    super.key,
  });
  int? _gelensayi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () async {
                  _gelensayi = await Navigator.push<int>(context,
                      CupertinoPageRoute(builder: (RedContext) => RedPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Kırmızı Sayfaya Gir IOS",
                  style: TextStyle(color: Colors.red),
                )),
            ElevatedButton(
                onPressed: () async {
                  _gelensayi = await Navigator.of(context).push(
                      MaterialPageRoute(builder: (RedContext) => RedPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Kırmızı Sayfaya Gir Android",
                  style: TextStyle(color: Colors.red),
                )),
            ElevatedButton(
                onPressed: () async {
                  _gelensayi = await Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (YellowContext) => Yellow_page()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Sarı Sayfaya Gir IOS",
                  style: TextStyle(color: Colors.yellow),
                )),
            ElevatedButton(
                onPressed: () async {
                  if (Navigator.canPop(context))
                    print("EVet olabilir");
                  else
                    print("Hayır olamaz");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Sarı Sayfaya Gir Android",
                  style: TextStyle(color: Colors.yellow),
                )),
            ElevatedButton(
                onPressed: () async {
                  _gelensayi = await Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (GreenContext) => GreenPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Yeşil Sayfaya Gir IOS",
                  style: TextStyle(color: Colors.green),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .maybePop(); //öncesinde açılmış sayfa varşa çıkış yap ama öncesinde sayfa yoksa bişi yapmaz
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text(
                "Yeşil Sayfaya Gir Android",
                style: TextStyle(color: Colors.green),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed((context), "/ellowPage");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text(
                "Var Olamayan Sayfa",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/OgrenciListe"  ,arguments: Random().nextInt(50));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text(
                "Liste Oluştur",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
