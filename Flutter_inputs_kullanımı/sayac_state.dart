import 'package:flutter/material.dart';

class SayacWidget extends StatefulWidget {
  const SayacWidget({super.key});

  @override
  State<SayacWidget> createState() => SayacWidgetState();
}

class SayacWidgetState extends State<SayacWidget> {
  @override
  int _counter = 0;
  void arttir() {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Text(
      _counter.toString(),
      style: TextStyle(fontSize: 50),
    );
  }
}
