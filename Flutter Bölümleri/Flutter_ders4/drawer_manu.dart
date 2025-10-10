import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Bekir Turgut Hapoğlu"),
            accountEmail: Text("bekir.hapoglu@gmail.com"),
            currentAccountPicture: Image.network(
              "https://r.resimlink.com/tq8NpWliSDO.png",
              alignment: AlignmentDirectional.center,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network(
                  "https://r.resimlink.com/tq8NpWliSDO.png",
                  alignment: AlignmentDirectional.center,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network(
                  "https://r.resimlink.com/tq8NpWliSDO.png",
                  alignment: AlignmentDirectional.center,
                ),
              ),
            ],
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
                  leading: Icon(Icons.person_2_outlined),
                  title: Text("Ara"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.person_2_outlined),
                    title: Text("Ara"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                AboutListTile(
                  applicationName: "Flutter Dersleri",
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: "3.24",
                  icon: Icon(Icons.subdirectory_arrow_right_rounded),
                  applicationLegalese: "Merhaba",
                  child: Text("Açılış"),
                  aboutBoxChildren: [
                    Text("Flutter 1"),
                    Text("Flutter 2"),
                    Text("Flutter 3"),
                    Text("Flutter 4"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
