import 'package:flutter/material.dart';

class Yellow_page extends StatelessWidget {
  const Yellow_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sarı Sayfa"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Bu Sayfa Sarı",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (Navigator.canPop(context)) {
                    print("EVet olabilir");
                    Navigator.of(context).pop();
                  } else
                    print("Hayır olamaz");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Sarı Sayfaya Gir Android",
                  style: TextStyle(color: Colors.yellow),
                )),
          ],
        ),
      ),
    );
  }
}
