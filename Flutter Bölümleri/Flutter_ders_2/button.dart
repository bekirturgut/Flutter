import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              debugPrint("Kısa Basıldı");
            },
            onLongPress: () {
              debugPrint("Uzun Basıldı");
            },
            child: Text(
              "Buton1",
            )),
        TextButton.icon(
          onPressed: () {},
          label: Text("Buton2 with Icon"),
          icon: Icon(Icons.heart_broken_rounded),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.amber),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              side: BorderSide(color: Colors.black, width: 2)),
          child: Text("Buton3"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text("Buton4"),
          icon: Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Icon(
            Icons.abc,
            size: 40,
          ),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          label: Text("Buton6"),
          icon: Icon(
            Icons.ac_unit_sharp,
            shadows: [
              Shadow(color: Colors.black),
              BoxShadow(blurRadius: 3, color: Colors.red)
            ],
          ),
        )
      ],
    );
  }
}
