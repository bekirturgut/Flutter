import 'package:flutter/material.dart';
import 'package:flutter_inputs/diger_form_elemanlari.dart';
import 'package:flutter_inputs/global_key_kullanimi.dart';
import 'package:flutter_inputs/stepper_islemleri.dart';
import 'package:flutter_inputs/tarih_ve_saat.dart';
import 'package:flutter_inputs/text_form_field.dart';
import 'package:flutter_inputs/text_field_islemleri.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StepperIslemleri(),
    );
  }
}
