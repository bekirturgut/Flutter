import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({super.key});

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  List<String> liste = ["Selam", "Benim", "Adım", "Bekir"];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("2.KISIMDA");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Merhaba",
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("BUTONA BASILMA MİKTARI",
                style: TextStyle(fontSize: 25)),
            Text(liste[i], style: const TextStyle(fontSize: 50)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SayacArttir();
        },
        child: const Icon(Icons.account_circle_outlined),
      ),
    );
  }

  void SayacArttir() {
    setState(() {});
    if (i == liste.length - 1)
      i = 0;
    else
      i++;
  }
}
