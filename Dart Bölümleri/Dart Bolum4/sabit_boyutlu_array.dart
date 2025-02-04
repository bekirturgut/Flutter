void main(List<String> args) {
  int sayi = 4;
  List<int> liste = List.filled(3, 0,
      growable:
          false); // 3 = eleman sayısı , 0 = elemanların değerleri , growable = listenin büyyüyebilip küçülebileceğini seçiyoruz.
  liste[0] =
      sayi; // C deki gibi elemanlarına köşeli parantez ile ulaşırsın 4 ü koyduk yerine.
  liste[1] = 2;
  liste[2] = 8;
  print(liste.length); // listedeki eleman sayısı
  print(liste);

  List<String> isimler = List.filled(3, "");
  isimler[0] = "bekir";
  isimler[1] = 21.toString();
  isimler[2] = "turgut";
  print(isimler);

  List<dynamic> karisik = List.filled(5,
      0); // bu sayede hem int hem string veri tutabiliriz burda aslında liste yapısı belirtmedik ama bu dynamic oalrak geçer.
  karisik[0] = "sıla";
  karisik[1] = 14;
  karisik[2] = 11;
  karisik[3] = 2024;
  karisik[4] = "teoman - iki yabancı";
  print(karisik);
}
