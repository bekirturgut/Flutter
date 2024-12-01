import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  late String isim = "", soyisim = "", email = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Bilgi Doldurma Ekranı"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  onSaved: (newValue) {
                    isim = newValue!;
                  },
                  //initialValue: "Merhaba 1", //başlangıç değer ayarladık
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.red),
                      labelText: "İsim",
                      hintText: "İsim Giriniz",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                  validator: (value) {
                    //burda veri girişi esnasında işlem yapmak için kullanılır.
                    if (value!.length < 8) {
                      return "Girilen karakter sayısı en az 8 olmalıdır...";
                    } else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  onSaved: (newValue) {
                    soyisim = newValue!;
                  },
                  keyboardType: TextInputType.text,
                  //initialValue: "Merhaba 1", //başlangıç değer ayarladık
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.red),
                      labelText: "Soyisim",
                      hintText: "Soyisim",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                  validator: (value) {
                    //burda veri girişi esnasında işlem yapmak için kullanılır.
                    if (value!.length < 2) {
                      return "Girilen karakter sayısı 2 den az olamaz...";
                    } else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  onSaved: (newValue) {
                    email = newValue!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  //initialValue: "Merhaba 1", //başlangıç değer ayarladık
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.red),
                      labelText: "Email",
                      hintText: "Email Giriniz '...@gmail.com'",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                  validator: (value) {
                    //burda veri girişi esnasında işlem yapmak için kullanılır.
                    if (value!.isEmpty)
                      return "Mail kısmı boş olamaz...";
                    else if (EmailValidator.validate(value!) == false) {
                      return "Geçerli mail adresi giriniz...";
                    } else
                      return null;
                  },
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shadowColor: Colors.black,
                      elevation: 3),
                  onPressed: () {
                    bool _validate = _formkey.currentState!.validate();
                    if (_validate) {
                      _formkey.currentState!.save();
                      String _mesaj =
                          "\n\nİsim : $isim\nSoyisim : $soyisim\nEmail : $email\n\n KAYIT BAŞARILI...";
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.white12,
                          content: Text(
                            _mesaj,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )));
                      _formkey.currentState!.reset();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Kayıt Et   ",
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(Icons.save_as_outlined),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
