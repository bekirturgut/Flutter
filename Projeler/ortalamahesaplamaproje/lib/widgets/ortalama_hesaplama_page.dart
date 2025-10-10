import 'package:flutter/material.dart';
import 'package:ortalamahesaplamaproje/data.dart';
import 'package:ortalamahesaplamaproje/ders_listesi.dart';
import 'package:ortalamahesaplamaproje/sabitler.dart';
import 'package:ortalamahesaplamaproje/widgets/ders_goster.dart';
import 'package:ortalamahesaplamaproje/widgets/ortalama_goster.dart';

class ortalama_hesaplama_page extends StatefulWidget {
  const ortalama_hesaplama_page({super.key});

  @override
  State<ortalama_hesaplama_page> createState() =>
      _ortalama_hesaplama_pageState();
}

class _ortalama_hesaplama_pageState extends State<ortalama_hesaplama_page> {
  var FormKey = GlobalKey<FormState>();
  double? secilen_not, secilen_kredi;
  String dersisim = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            Sabitler.baslikText,
            style: Sabitler.baslik,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _BuildForm(),
                ),
                Expanded(
                  flex: 1,
                  child: OrtalamaGoster(
                      dersSayisi: HarfNotlar.tumeklenendersler.length,
                      ortalama: HarfNotlar.ortalamaHesapla()),
                ),
              ],
            ),
            Expanded(
              child: DersListesi(
                onElemanCikar: (index) {
                  HarfNotlar.tumeklenendersler.removeAt(index);
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _BuildForm() {
    return Form(
        key: FormKey,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: _BuildTextFormField()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
                _BuildHarfler(),
                _BuildKrediler(),
                IconButton(
                    color: Sabitler.AnaRenk,
                    onPressed: _dersEkleveOrtalamaHesapla,
                    icon: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 45,
                    )),
              ],
            ),
            SizedBox(height: 8)
          ],
        ));
  }

  Widget _BuildTextFormField() {
    return TextFormField(
      onSaved: (value) => (setState(() {
        dersisim = value!;
      })),
      validator: (s) {
        if (s!.length <= 0)
          return "Ders Adını Giriniz";
        else
          return null;
      },
      decoration: InputDecoration(
          hintText: "Ders İsim",
          hintStyle: TextStyle(color: Colors.black26),
          border: OutlineInputBorder(borderRadius: Sabitler.borderradius),
          filled: true,
          fillColor: Sabitler.AnaRenk.shade300.withOpacity(0.3)),
    );
  }

  Widget _BuildHarfler() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: Sabitler.borderradius,
        color: Sabitler.AnaRenk.shade300.withOpacity(0.3),
      ),
      child: DropdownButton<double>(
        menuMaxHeight: 200,
        alignment: Alignment.center,
        hint: Text("Not"),
        underline: Container(),
        value: secilen_not,
        items: HarfNotlar.tumderslerinharfleri(),
        onChanged: (value) {
          setState(() {
            secilen_not = value!;
          });
        },
      ),
    );
  }

  Widget _BuildKrediler() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: Sabitler.borderradius,
        color: Sabitler.AnaRenk.shade300.withOpacity(0.3),
      ),
      child: DropdownButton<double>(
          menuMaxHeight: 200,
          alignment: Alignment.center,
          hint: Text("Kredi"),
          underline: Container(),
          value: secilen_kredi,
          items: HarfNotlar.tumderslerinkredileri(),
          onChanged: (value) {
            setState(() {
              secilen_kredi = value;
            });
          }),
    );
  }

  _dersEkleveOrtalamaHesapla() {
    if (FormKey.currentState!.validate()) {
      FormKey.currentState!.save();
      var eklenecekders = Ders(
          ad: dersisim, harfdegeri: secilen_not!, kredidegeri: secilen_kredi!);
      HarfNotlar.dersEkle(eklenecekders);
      setState(() {});
    }
  }
}
