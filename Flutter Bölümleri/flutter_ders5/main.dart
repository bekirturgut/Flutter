import 'package:flutter/material.dart';
import 'package:flutter_ders_5/local_json.dart';
import 'package:flutter_ders_5/remote_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("JSON Kavramı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LocalJSON()));
              },
              child: const Text("Local JSON"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RemoteApiKullanimi()));
              },
              child: const Text("Remote API"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
