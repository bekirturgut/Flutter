import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {
  const TextFieldIslemleri({super.key});

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;
  late FocusNode _fokusNode;
  int satir = 1;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "Deneme@gmail.com");
    _fokusNode = FocusNode();
    _fokusNode.addListener(() {
      setState(() {
        if (_fokusNode.hasFocus) {
          satir = 3;
        } else
          satir = 1;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController
        .dispose(); // bu veriler bellekten silinmiyor elle silmek lazım bu yüzden bu kısımı kullanırız.
    _fokusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "İnputs İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              focusNode: _fokusNode,
              controller: _emailController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              autofocus: true, // açılır açılmaz bu kısıma gider
              maxLines: satir, //4 satırlık boşluk bırakır
              //maxLength: 20, //max 20 karakter almasını sağlar
              onChanged: (String Deger) {
                _emailController = TextEditingController(text: Deger);
                setState(() {});
                //veriyi almaya yarar
                print(Deger);
              },
              onSubmitted: (String Veri) {
                _emailController = TextEditingController(text: Veri);
                setState(() {});
                //bu onaylanırsa veriyi alır ve süslü parantezdeki işlem yapılır
                print(Veri);
              },
              cursorColor: Colors.pink, //imleci pembe yapar,
              decoration: InputDecoration(
                  labelText: "Text Veri Alma",
                  hintText: "Metin Giriniz",
                  icon: Icon(Icons.text_decrease)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                  labelText: "İnt Veri Alma",
                  icon: Icon(Icons.numbers),
                  prefixIcon: Icon(
                    Icons.abc,
                  ),
                  suffixIcon: Icon(Icons.ac_unit_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                  labelText: "Email Veri Alma",
                  icon: Icon(Icons.alternate_email)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
