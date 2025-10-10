import 'package:flutter_ders6/my_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefencesServices {
  void VerilerKayitEt(UserInformation user) async {
    final name = user.isim;
    var prefences = await SharedPreferences.getInstance();

    prefences.setString("Isim", name);
    prefences.setInt("Cinsiyet", user.cinsiet.index);
    prefences.setStringList("Renkler", user.renkler);
  }

  Future<UserInformation> VerileriOku() async {
    var prefences = await SharedPreferences.getInstance();

    var isim = prefences.getString("Isim") ?? "";
    var cinsiyet = Cinsiyet.values[prefences.getInt("Cinsiyet") ?? 0];
    var renklerim = prefences.getStringList("Renkler") ?? <String>[];

    return UserInformation(isim, cinsiyet, renklerim);
  }
}
