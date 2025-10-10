import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animasyonlar/yeniSayfa.dart';

//! mateapp kısayolu ile mainli ve materialapp ve scaffold içeren hızlıca bir demo dart dosyası yazabilirsin

//! 1-) Ticker 
//! 2-) Animation 
//! 3-) Animation Controller 
//? bu üç önemli kural ile animasyonlarını yapabilirsin

//* 1- animation controller tanımlamak
//* 2- class a with ile şunu ekle "with SingleTickerProviderStateMixin"
//* 3- initState kısmına animation controlleri ayarlama yap 
//*   3.1- vsync kısmını this yap 
//*   3.2- duration yani animasyon ne kadar sürecek onu ayarla
//* 4- dispose kısmından controller i kapatma komutu yolla bu sayede arka planda boşu boşuna çalışmaz
//* 5- animation controller kısmında listener ekle ki bu animasyonu uygulama sürekli takip etsin ve içine setState ekle ki değişiklik ekranda gözüksün
//* 6- controller ı başlat

 
class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with SingleTickerProviderStateMixin{
  AnimationController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this ,duration: Duration(seconds: 2),lowerBound: 20,upperBound: 40);
    controller?.addListener(() {
      setState(() {
        print(controller?.value.toString());
      });
    },);

    controller?.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double boyut = 50;
    return Scaffold(
      appBar: AppBar(title: Text("Animasyonlar"),
      backgroundColor: Colors.blue,elevation: 3,shadowColor: Colors.black,),
      body: Center(child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(tag: "Flutter", child: FlutterLogo(size: 50,)),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Yenisayfa()));
          }, child: Text("Yeni Sayfa"))
        ],
      )),
    );
  }
}