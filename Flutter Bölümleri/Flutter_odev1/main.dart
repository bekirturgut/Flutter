import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text(
              "Flutter Dersleri",
              style: TextStyle(fontSize: 30),
            )),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("D", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("A", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("R", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("T", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("E", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("R", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("S", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("L", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("E", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("R", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Text("İ", style: TextStyle(fontSize: 50)),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
