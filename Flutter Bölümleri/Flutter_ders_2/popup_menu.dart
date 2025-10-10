import 'package:flutter/material.dart';

class PopupMenuAnlatimi extends StatefulWidget {
  const PopupMenuAnlatimi({Key? key}) : super(key: key);

  @override
  _PopupMenuKullanim createState() => _PopupMenuKullanim();
}

class _PopupMenuKullanim extends State<PopupMenuAnlatimi> {
  @override
  String? secim = null;
  List<String> sehirler = [
    "Ankara",
    "Konya",
    "İstanbul",
    "Aşk",
    "Kara",
    "Tren",
    "Geceler",
    "Yüküm",
    "Çok"
  ];
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        child: PopupMenuButton<String>(
            onSelected: (String sec) {
              setState(() {
                secim = sec;
                print("Secilen $secim");
              });
            },
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            itemBuilder: (BuildContext context) {
              return sehirler
                  .map((String yer) => PopupMenuItem(
                        child: Text(yer),
                        value: yer,
                      ))
                  .toList();
            }));
  }
}
