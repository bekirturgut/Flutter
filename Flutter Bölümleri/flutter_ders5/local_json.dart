import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ders_5/model/araba_model.dart';

class LocalJSON extends StatefulWidget {
  const LocalJSON({super.key});

  @override
  State<LocalJSON> createState() => _LocalJSONState();
}

class _LocalJSONState extends State<LocalJSON> {
  late Future<List<Araba>> _listeyidoldur;

  @override
  void initState() {
    // statefull widget olsa bile bu kısımdakiler sadece bir kez tekrar edilir , o yuzden atamalar burda yapılır.
    // TODO: implement initState
    super.initState();
    _listeyidoldur = ArabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
      }),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Local Json İşlemleri"),
      ),
      body: FutureBuilder<List<Araba>>(
        initialData: [
          Araba(
              arabaAdi: "veri bekleniyor",
              ulke: "bekleniyor",
              yil: 0000,
              model: [Model(modelAdi: "bekleniyor", fiyat: 0, benzinli: false)])
        ], // future fonksiyon gerçekleşene kadar kullanıcıya ne gostereceğini ayarlarma yeridir burası aklında bulunsun işe yarar.
        future: _listeyidoldur,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Araba> arabalistesi = snapshot.data!;
            return ListView.builder(
              itemCount: arabalistesi.length,
              itemBuilder: (context, index) {
                Araba OankiAraba = arabalistesi[index];
                return ListTile(
                  title: Text(OankiAraba.arabaAdi),
                  subtitle: Text(OankiAraba.ulke),
                  leading: CircleAvatar(
                    child: Text(OankiAraba.yil.toString()),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<List<Araba>> ArabalarJsonOku() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      String okunan = await DefaultAssetBundle.of(context)
          .loadString("assets/data/arabalar.json");

      var JsonObject = jsonDecode(okunan);
      debugPrint(okunan);
      debugPrint("\n***********************************\n");
      /*
      List ArabaListesi = JsonObject;
      debugPrint(ArabaListesi[0].toString());
      */
      List<Araba> TumArabalar =
          (JsonObject as List).map((eleman) => Araba.fromJson(eleman)).toList();
      //debugPrint(TumArabalar.length.toString());
      debugPrint(TumArabalar[0].arabaAdi);

      return TumArabalar;
    } catch (e) {
      debugPrint(e.toString());
      return null!;
    }
  }
}
