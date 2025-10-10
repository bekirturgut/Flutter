

import 'package:flutter/material.dart';
import 'package:proje_1/Burc.dart';
import 'package:proje_1/BurcDetay.dart';

class BurcItem extends StatelessWidget {
  final Burc Listelenen;
  const BurcItem({required this.Listelenen, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BurcDetay(secilen: Listelenen)));
        },
        leading: Image(
          image: NetworkImage(Listelenen.burcKucukResim),
          width: 64,
          height: 64,
        ),
        title: Text(Listelenen.burcAdi),
        subtitle: Text(Listelenen.burcTarihi),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ));
  }
}
