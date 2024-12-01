import 'package:flutter/material.dart';
import 'package:flutter_inputs/sayac_state.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  GlobalKeyKullanimi({super.key});
  final sayacWidgetKey = GlobalKey<SayacWidgetState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Global Key Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona Basılma Miktarı",
              style: TextStyle(fontSize: 30),
            ),
            SayacWidget(
              key: sayacWidgetKey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacWidgetKey.currentState!.arttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
