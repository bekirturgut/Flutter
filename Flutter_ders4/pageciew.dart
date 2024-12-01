import 'package:flutter/material.dart';
import 'package:flutter_ders_4/bottonnavigatorbar_kullanimi.dart';

class PageViewornek extends StatefulWidget {
  const PageViewornek({super.key});

  @override
  State<PageViewornek> createState() => _PageViewornekState();
}

class _PageViewornekState extends State<PageViewornek> {
  var mycontroller =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      reverse: false,
      controller: mycontroller,
      pageSnapping: true,
      onPageChanged: (index) {},
      children: [Ana_Sayfa(), Arama()],
    );
  }
}
