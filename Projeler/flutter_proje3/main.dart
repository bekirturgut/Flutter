import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int secilenindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "bekir",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
                size: 45,
              )),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Bekir Turgut Hapoğlu"),
              accountEmail: Text("bekir.hapoglu@gmail.com"),
              currentAccountPicture: Image.network(
                "https://r.resimlink.com/tq8NpWliSDO.png",
                alignment: AlignmentDirectional.center,
              ),
              currentAccountPictureSize: Size(150, 100),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Anasayfa"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                  ListTile(
                    leading: Icon(Icons.search),
                    title: Text("Ara"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                  ListTile(
                    leading: Icon(Icons.manage_accounts_rounded),
                    title: Text("Kullanıcı İşlemleri"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text("Çıkış"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            color: Colors.transparent,
            height: 130,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListeElemani("assets/foto3.jpg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 15,
                ),
                ListeElemani("assets/foto6.jpg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 15,
                ),
                ListeElemani("assets/foto7.jpg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 15,
                ),
                ListeElemani("assets/foto8.jpg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 15,
                ),
                ListeElemani("assets/foto5.jpg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 15,
                ),
                ListeElemani("assets/foto2.jpg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 15,
                ),
                ListeElemani("assets/foto1.jpg", "assets/chanellogo.jpg"),
              ],
            ),
          ),
          AnasayfaListeEleman(context),
          AnasayfaListeEleman(context),
          AnasayfaListeEleman(context),
          AnasayfaListeEleman(context),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Anasayfa",
              activeIcon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: "Ara",
              activeIcon: Icon(
                Icons.manage_search_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.black,
              ),
              label: "Arkadaşlar",
              activeIcon: Icon(
                Icons.people_alt_outlined,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
            label: "Çıkış",
            activeIcon: Icon(
              Icons.keyboard_return_outlined,
              color: Colors.black,
            ),
          )
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        currentIndex: secilenindex,
        onTap: (index) {
          setState(() {
            secilenindex = index;
          });
        },
      ),
    );
  }

  Padding AnasayfaListeEleman(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 5,
        color: Colors.white60,
        child: Container(
          height: 400,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/foto9.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 148,
                    height: 50,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdulkadir Alagöz",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text("35 mins ago", style: TextStyle(fontSize: 12))
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Text(
                  "Selamlar Yeni Moda Uygulamamı Bekir Turgut Hapoğlu arkadaşımıza yaptırıyorum ve kendisi bu uygulamayı yaparken baya zevk aldığını söylüyor emekleri için ona çok teşekkür ederim."),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 175,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/foto1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 172,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                                image: AssetImage("assets/foto2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: 172,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                                image: AssetImage("assets/foto3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ListeElemani(String imagepath, String logopath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          // üst üste bindirmeye yarıyor
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagepath), fit: BoxFit.cover)),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logopath), fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 25,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.brown),
                  shadowColor: WidgetStatePropertyAll(Colors.black)),
              onPressed: () {},
              child: Text("Follow",
                  style: TextStyle(fontSize: 15, color: Colors.white))),
        )
      ],
    );
  }
}
