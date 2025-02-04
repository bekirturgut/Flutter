import 'dart:math';

class KullaniciIslemleri {
  String _kullniciadi = "bekir";
  String _sifre = "turgut";

  bool baglan() {
    if (_InternetVarmi()) {
      if (_kullniciadi == "bekir" && _sifre == "turgut")
        return true;
      else
        return false;
    } else
      return false;
  }

  bool _InternetVarmi() {
    if (Random().nextBool())
      return true;
    else
      return false;
  }
}
