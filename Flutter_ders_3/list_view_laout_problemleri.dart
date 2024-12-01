import 'package:flutter/material.dart';

class ListViewLaoutProblemleri extends StatelessWidget {
  const ListViewLaoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("ListView Problemleri"),
      ),
      body: Container(
        child: Column(
          // bu alan açısından aç gözlü olduğu için column yada row gibi eklerde kullanılamaz.
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text("Başladı"),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Selam"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text("Ben"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: Text("Bekir Turgut"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Selam"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text("Ben"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: Text("Bekir Turgut"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Selam"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text("Ben"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: Text("Bekir Turgut"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Selam"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text("Ben"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: Text("Bekir Turgut"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Selam"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text("Ben"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: Text("Bekir Turgut"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Selam"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text("Ben"),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: Text("Bekir Turgut"),
                  ),
                  Text("Bitti")
                ],
              ),
            ),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.red)),
      ),
    );
  }
}
