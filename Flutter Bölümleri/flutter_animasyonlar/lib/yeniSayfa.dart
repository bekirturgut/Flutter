import 'package:flutter/material.dart';

class Yenisayfa extends StatefulWidget {
  const Yenisayfa({super.key});

  @override
  State<Yenisayfa> createState() => _YenisayfaState();
}

class _YenisayfaState extends State<Yenisayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animasyonlar"),
      backgroundColor: Colors.blue,elevation: 3,shadowColor: Colors.black,),
      body: Center(child:Hero(tag: "Flutter", child: FlutterLogo(size: 256,style: FlutterLogoStyle.stacked))),
    );
  }
}