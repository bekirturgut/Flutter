import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ders6/my_models.dart';
import 'package:flutter_ders6/services/shared_services.dart';

class SharedPrefencesKullanimi extends StatefulWidget {
  const SharedPrefencesKullanimi({super.key});

  @override
  State<SharedPrefencesKullanimi> createState() =>
      _SharedPrefencesKullanimiState();
}

class _SharedPrefencesKullanimiState extends State<SharedPrefencesKullanimi> {
  var secilencinsiyet = Cinsiyet.KADIN;
  var secilenrenk = false;
  var Renklerim = <String>[];
  TextEditingController _nameController = TextEditingController();
  var _prefrenceService = SharedPrefencesServices();

  @override
  void initState() {
    super.initState();
    _VerileriOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Prefences Kullanımı"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Data Giriniz..."),
            ),
          ),
          for (var item in Cinsiyet.values) RadioListTileKullan(item),
          for (var item in Renkler.values) CheckBoxListTileKullan(item),
          TextButton(
              onPressed: () {
                // ignore: unused_local_variable, no_leading_underscores_for_local_identifiers
                var _userInformation = UserInformation(
                    _nameController.text, secilencinsiyet, Renklerim);
              },
              child: const Text("KAYIT ET"))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget RadioListTileKullan(var value) {
    return RadioListTile(
        title: Text(describeEnum(value)),
        value: value,
        groupValue: secilencinsiyet,
        onChanged: (secilen) {
          setState(() {
            secilencinsiyet = secilen!;
          });
        });
  }

  // ignore: non_constant_identifier_names
  Widget CheckBoxListTileKullan(var baslik) {
    return CheckboxListTile(
      // ignore: deprecated_member_use
      title: Text(describeEnum(baslik)),
      value: Renklerim.contains(describeEnum(baslik)),
      onChanged: (value) {
        setState(() {
          if (value == false) {
            // ignore: deprecated_member_use
            Renklerim.remove(describeEnum(baslik));
          } else {
            // ignore: deprecated_member_use
            Renklerim.add(describeEnum(baslik));
          }
          debugPrint(Renklerim.toString());
        });
      },
    );
  }

  void _VerileriOku() async {
    var info = await _prefrenceService.VerileriOku();
    _nameController.text = info.isim;
    secilencinsiyet = info.cinsiet;
    Renklerim = info.renkler;
    setState(() {});
  }
}
