import "package:flutter/material.dart";
import "package:flutter_ders_2/my_counter_app.dart";
import "package:flutter_ders_2/dropdown.dart";
import "package:flutter_ders_2/image_widgets.dart";
import "package:flutter_ders_2/button.dart";
import "popup_menu.dart";

void main() {
  debugPrint("Main Methodu Çalştı.");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("1.KISIMDA");
    return MaterialApp(
      title: "Benim Widget'im.",
      theme: ThemeData(
        outlinedButtonTheme:
            OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [PopupMenuAnlatimi()],
          title: Text(
            "BUTONLAR",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: DropDownButonKullanimi(key),
        ),
      ),
    );
  }
}
