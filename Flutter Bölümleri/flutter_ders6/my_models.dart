enum Cinsiyet { ERKEK, KADIN, DIGER }

enum Renkler { YESIL, KIRMIZI, MAVI, SIYAH }

class UserInformation {
  final String isim;
  final Cinsiyet cinsiet;
  final List<String> renkler;

  UserInformation(this.isim, this.cinsiet, this.renkler);
}
