import "Ogrenci.dart";

void main(List<String> args) {
  List<Ogrenci> ogrenciler = [];
  for (int i = 0; i < 100; i++) ogrenciler.add(Ogrenci());
  TumOgrencileriYazdir(ogrenciler);
}

void TumOgrencileriYazdir(List<Ogrenci> liste) {
  for (Ogrenci ogrenci in liste) ogrenci.BilgileriVer();
}
