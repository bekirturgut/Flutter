import 'package:flutter/material.dart';
import 'package:flutter_ders_3/card_listtile.dart';
import 'package:flutter_ders_3/list_view_kullan%C4%B1m%C4%B1.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'list_view_laout_problemleri.dart';
import 'girdview.dart';
import 'CoolapsableToolBarOrnek.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.black
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.black
    ..textColor = Colors.black
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "DUBA KONSEPT",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: Scaffold(
          body: CollapsableToolBarOrnek(),
        ));
  }
}
