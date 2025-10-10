import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatefulWidget {
  ListViewKullanimi({super.key});

  @override
  State<ListViewKullanimi> createState() => _ListViewKullanimiState();
}

class _ListViewKullanimiState extends State<ListViewKullanimi> {
  List<Ogrenci> TumOgrenciler = List.generate(
      600,
      (index) => Ogrenci(index + 1, "Ogrenci isim ${index + 1}",
          " Ogrenci soyadı ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: ListView.separated(
          separatorBuilder: (context, index) {
            if (index % 4 == 0 && index != 0)
              return Divider(
                thickness: 2,
                height: 2,
                color: Colors.black45,
              );
            else
              return SizedBox(
                height: 5,
              );
          },
          itemBuilder: (context, index) {
            return Card(
              surfaceTintColor: Colors.black,
              color: index % 2 == 0 ? Colors.grey[200] : Colors.white30,
              margin: EdgeInsets.all(2),
              child: ListTile(
                  onTap: () {
                    EasyLoading.showToast("Eleman Tıklandı",
                        duration: Duration(seconds: 2),
                        dismissOnTap: true,
                        toastPosition: EasyLoadingToastPosition.bottom);
                  },
                  onLongPress: () {
                    _AlertDialogIslemleri(context, TumOgrenciler[index]);
                  },
                  title: Text(TumOgrenciler[index].isim),
                  subtitle: Text(TumOgrenciler[index].soyisim),
                  leading: CircleAvatar(
                    child: Text(
                      TumOgrenciler[index].id.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blue,
                  )),
            );
          },
          itemCount: TumOgrenciler.length),
    );
  }

  ListView ListViewMethodu() {
    return ListView(
      children: TumOgrenciler.map((Ogrenci Ogr) => ListTile(
          title: Text(Ogr.isim),
          subtitle: Text(Ogr.soyisim),
          leading: CircleAvatar(
            child: Text(
              Ogr.id.toString(),
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ))).toList(),
    );
  }

  void _AlertDialogIslemleri(BuildContext mycontext, Ogrenci secilen) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.isim + secilen.soyisim),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(
                      "Bu Öğrenci isimi ${secilen.isim} ve soyismi ${secilen.soyisim} kendisi bizim okumuzlda okumakta ve numarası ${secilen.id}")
                ],
              ),
            ),
            actions: [
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Kapat")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Tamam")),
                  //TextButton(onPressed: () {}, child: Text("Tamam")),
                  //TextButton(onPressed: () {}, child: Text("Kapat")),
                  //TextButton(onPressed: () {}, child: Text("Tamam")),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  int id;
  String isim;
  String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
