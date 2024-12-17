import 'package:flutter/material.dart';
import 'package:flutter_ders6/shared_prefences_kullanimi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SharedPrefencesKullanimi()),
          );
        },
        child: Text("Shared Preferences Kullanımı"),
      ),
    );
  }
}
