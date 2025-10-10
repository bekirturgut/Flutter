import "package:flutter/material.dart";

class DropDownButonKullanimi extends StatefulWidget {
  const DropDownButonKullanimi(Key? key) : super(key: key);

  @override
  _DropDownButonKullanimiState createState() => _DropDownButonKullanimiState();
}

class _DropDownButonKullanimiState extends State<DropDownButonKullanimi> {
  @override
  Widget build(BuildContext context) {
    String? _secilen_sehir = null;
    List<String> _tum_sehirler = [
      "Ankara",
      "Bursa",
      "İstanbul",
      "Konya",
      "Çorum",
      "Antalya"
    ];
    return Center(
      child: DropdownButton(
        hint: Text("Şehir Seçiniz"),
        items: _tum_sehirler
            .map((eleman) => DropdownMenuItem(
                  child: Text(eleman),
                  value: eleman,
                ))
            .toList(),
        value: _secilen_sehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilen_sehir = yeni!;
            print("seçildi $yeni");
          });
        },
      ),
    );
  }
}
