import 'package:flutter/material.dart';
import 'package:proje2/data.dart';
import 'package:proje2/sabitler.dart';
import 'package:proje2/widgets/ders_goster.dart';

class DersListesi extends StatelessWidget {
  final Function onElemanCikar;
  const DersListesi({super.key, required this.onElemanCikar});

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = HarfNotlar.tumeklenendersler;
    if (tumDersler.isEmpty)
      return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kayıtlı Ders",
              style: Sabitler.baslik,
            ),
            Text(
              "Bulunmamaktadır",
              style: Sabitler.baslik,
            )
          ],
        ),
      );
    else
      return ListView.builder(
          itemCount: tumDersler.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.startToEnd,
              onDismissed: (a) {
                onElemanCikar(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(tumDersler[index].ad),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Sabitler.AnaRenk.shade200,
                      child: Text((tumDersler[index].harfdegeri *
                              tumDersler[index].kredidegeri)
                          .toStringAsFixed(2)),
                    ),
                    subtitle: Text(
                        "${tumDersler[index].kredidegeri} Kredi , Not Değeri  ${tumDersler[index].harfdegeri}"),
                  ),
                ),
              ),
            );
          });
  }
}
