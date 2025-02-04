void main(List<String> args) {
  Set<String> isimler =
      Set(); // bu aşırı işe arayan bir şey aynı elemanları içine almaz aynı 2 elemanı bulundurmaz her elemandan sadece bir tane bulundurur.
  isimler.add("bekir");
  isimler.add("bekir");
  isimler.add("turgut");
  isimler.add("hapoglu");
  // set yapısında index erişimi yoktur veriler sıralı tutulmaz buna dikkat et. eleman bulmak için gezmen lazım ama contains gibi methotlar kullanabilirsin.
  for (String isim in isimler) {
    print(isim);
  }
  bool sonuc = isimler.remove(
      "bekir"); // bunu yapabiliriz remove mantığı true yada false gibi değer döndürür kod katası vermez;
  print(sonuc);
  List<String> sayilar = ["1", "2", "3"];

  isimler.addAll(
      sayilar); // bir listeyi tamamen set listemize aktarmaya yarar , aynı tip veri tutma zorunluluğu vardır.
  print(isimler);
}
