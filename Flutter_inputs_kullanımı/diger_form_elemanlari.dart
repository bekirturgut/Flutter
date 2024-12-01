import 'package:flutter/material.dart';
/*
class DigerFormIslemleri extends StatefulWidget {
  const DigerFormIslemleri({super.key});

  @override
  State<DigerFormIslemleri> createState() => _DigerFormIslemleriState();
}

class _DigerFormIslemleriState extends State<DigerFormIslemleri> {
  bool CheckBoxState = false;
  bool Gay = false;
  double Gaylik_derecesi = 0;
  String? Sehir;
  String? Pasiflik;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer Form İşlemleri"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Container(
              width: 400,
              height: 200,
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CheckBoxState == true ? Icons.man : Icons.woman,
                        size: 35,
                      ),
                      Text(
                        "Erkek mi : ${CheckBoxState == true ? "Evet" : "Hayır"}",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_city_sharp,
                        size: 35,
                      ),
                      Text(
                        "Nereli : $Sehir",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Gay == false
                          ? Icons.trending_up
                          : Icons.trending_down),
                      Text(
                        "Gay mı : ${Gay == false ? "Hayır" : "Evet"}",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.rotate_90_degrees_ccw),
                      Text(
                        "Gaylık Derecesi : ${CheckBoxState == false ? "Kadınlar Gay Olamaz" : "10/${Gaylik_derecesi.toString()}"}",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_city_sharp,
                        size: 35,
                      ),
                      Text(
                        "Pasiflik : $Pasiflik",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CheckboxListTile(
                secondary: Icon(Icons.man),
                title: Text("Ben bir Erkeğim"),
                subtitle: Text("Erkeksen işaretle"),
                activeColor: Colors.red,
                value: CheckBoxState,
                onChanged: (value) {
                  setState(() {
                    CheckBoxState = value!;
                  });
                }),
            RadioListTile<String>(
                secondary: Icon(Icons.location_city),
                title: Text("Ben Angara'lıyım."),
                value: "Angara'lıyım",
                groupValue: Sehir,
                onChanged: (deger) {
                  setState(() {
                    print("Seçilen şehir $deger");
                    Sehir = deger!;
                  });
                }),
            RadioListTile<String>(
                secondary: Icon(Icons.location_city),
                title: Text("Ben Konya'lıyım."),
                value: "Konya'lıyım",
                groupValue: Sehir,
                onChanged: (deger) {
                  setState(() {
                    print("Seçilen şehir $deger");
                    Sehir = deger!;
                  });
                }),
            RadioListTile<String>(
                secondary: Icon(Icons.location_city),
                title: Text("Ben istanbul'luyum."),
                value: "İstanbul'luyum",
                groupValue: Sehir,
                onChanged: (deger) {
                  setState(() {
                    print("Seçilen şehir $deger");
                    Sehir = deger!;
                  });
                }),
            SwitchListTile(
                title: Text("Ben Gay'ım"),
                subtitle: Text("GAAAAAAY"),
                value: Gay,
                secondary: Icon(
                  Icons.change_circle_outlined,
                  size: 40,
                ),
                activeColor: Colors.pink,
                onChanged: (deger) {
                  setState(() {
                    Gay = deger!;
                  });
                }),
            Text(
              "Gaylik Derecesi Seçimi",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Slider(
                max: 10,
                min: 0,
                divisions: 10,
                label: Gaylik_derecesi.toString(),
                value: Gaylik_derecesi,
                onChanged: (deger) {
                  setState(() {
                    if (Gay == false && CheckBoxState == true)
                      Gaylik_derecesi = 0;
                    else
                      Gaylik_derecesi = deger!;
                  });
                }),
            DropdownButton(
              items: [
                DropdownMenuItem<String>(
                  child: Text("Selam Naber"),
                  value: "Bak",
                  onTap: () {},
                ),
                DropdownMenuItem<String>(
                  child: Text("Nasılsın Bakalım"),
                  value: "Baaaak",
                  onTap: () {},
                ),
              ],
              onChanged: (String? value) {},
              hint: Text("Seç Bakalım"),
              value: null,
            )
          ],
        ),
      ),
    );
  }
}
*/