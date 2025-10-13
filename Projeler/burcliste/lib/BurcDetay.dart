
import 'package:flutter/material.dart';

import 'Burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilen;
  const BurcDetay({required Burc this.secilen, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            "${secilen.burcAdi} Detayı",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"))),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                  backgroundColor: Colors.black,
                  automaticallyImplyLeading: false,
                  expandedHeight: 280,
                  flexibleSpace:
                      Image(image: NetworkImage("${secilen.burcBuyukResim}"))),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Genel Özellikler",
                        style: TextStyle(fontSize: 30),
                      ),
                      Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Text(
                          secilen.burcDetayi,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
