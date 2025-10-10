import 'package:flutter/material.dart';

class StepperIslemleri extends StatefulWidget {
  const StepperIslemleri({super.key});

  @override
  State<StepperIslemleri> createState() => _StepperIslemleriState();
}

class _StepperIslemleriState extends State<StepperIslemleri> {
  String? kullanici, sifre;
  int sayac = 0;
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper İşlemleri"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stepper(
            steps: _TumStepler(),
            currentStep: sayac,
            /*
            onStepTapped: (tiklanilan) {
              setState(() {
                sayac = tiklanilan;
              });
            },
            */
            onStepContinue: () {
              setState(() {
                if (sayac < _TumStepler().length - 1) sayac++;
              });
            },
            onStepCancel: () {
              setState(() {
                if (sayac > 0) sayac--;
              });
            },
          ),
        ),
      ),
    );
  }

  List<Step> _TumStepler() {
    List<Step> stepler = [
      Step(
          state: StepState.indexed,
          isActive: true,
          title: Text("Username"),
          content: TextFormField(
            key: key1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.language_outlined),
              label: Text("username"),
              counterText: "Kullanıcı Adı",
            ),
            validator: (value) {
              if (value!.length < 8) return "En az 8 karakter giriniz...";
            },
            onSaved: (newValue) {
              kullanici = newValue;
            },
          )),
      Step(
          title: Text("Password"),
          content: TextFormField(
            key: key2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.key_sharp),
              label: Text("Password"),
              counterText: "Şifre",
            ),
            validator: (value) {
              if (value!.length < 8) return "En az 8 karakter giriniz...";
            },
            onSaved: (newValue) {
              sifre = newValue;
            },
          )),
    ];
    return stepler;
  }
}
