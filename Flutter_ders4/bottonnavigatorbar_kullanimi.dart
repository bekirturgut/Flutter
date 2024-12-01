import 'package:flutter/material.dart';
import 'package:flutter_ders_4/drawer_manu.dart';

class BottonnavigatorbarKullanimi extends StatefulWidget {
  const BottonnavigatorbarKullanimi({super.key});

  @override
  State<BottonnavigatorbarKullanimi> createState() =>
      _BottonnavigatorbarKullanimiState();
}

class _BottonnavigatorbarKullanimiState
    extends State<BottonnavigatorbarKullanimi> {
  @override
  int secilenindex = 0;
  List<Widget> sayfalar = [];
  Ana_Sayfa? sayfaAna;
  Arama? sayfaArama;
  @override
  void initState() {
    super.initState();
    sayfaAna = Ana_Sayfa();
    sayfaArama = Arama();
    sayfalar = [sayfaAna!, sayfaArama!, sayfaAna!, sayfaArama!];
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          drawer: DrawerMenu(),
          appBar: AppBar(
            title: Text(
              "Flutter Ders 4",
              style:
                  TextStyle(color: Colors.white, fontFamily: "kendiFontlarim"),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: sayfalar[secilenindex],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Anasayfa",
                  activeIcon: Icon(Icons.home_outlined),
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Ara",
                  activeIcon: Icon(Icons.manage_search_outlined),
                  backgroundColor: Colors.amber),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: "Arkadaşlar",
                  activeIcon: Icon(Icons.people_alt_outlined),
                  backgroundColor: Colors.deepOrangeAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.exit_to_app),
                  label: "Çıkış",
                  activeIcon: Icon(Icons.keyboard_return_outlined),
                  backgroundColor: Colors.brown)
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: secilenindex,
            onTap: (index) {
              setState(() {
                secilenindex = index;
              });
            },
          )),
    );
  }
}

class Ana_Sayfa extends StatelessWidget {
  const Ana_Sayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: [
            ExpansionTile(
              title: Text("Bekir Turgut Hapoglu"),
              children: [
                Container(
                  child: Text(
                    "Bekir necmettin erbakan Üniversitesinde bilgisayar mühendisliği okumaktadır. Şuanda kendsi flutter öğrenme çabasındadır",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Bekir Turgut Hapoglu"),
              children: [
                Container(
                  child: Text(
                    "Bekir necmettin erbakan Üniversitesinde bilgisayar mühendisliği okumaktadır. Şuanda kendsi flutter öğrenme çabasındadır",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Bekir Turgut Hapoglu"),
              children: [
                Container(
                  child: Text(
                    "Bekir necmettin erbakan Üniversitesinde bilgisayar mühendisliği okumaktadır. Şuanda kendsi flutter öğrenme çabasındadır",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      color: Colors.purple[100],
    );
  }
}

class Arama extends StatelessWidget {
  const Arama({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Arama Ekranı",
            style: TextStyle(fontSize: 50, color: Colors.amber)),
      ),
      color: Colors.amber[100],
    );
  }
}
