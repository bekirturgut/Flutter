void main(List<String> args) {
  Ogrenci bekir = Ogrenci(1054, "bekir");
  bekir.BilgiVer();
}

class Ogrenci {
  int? NO;
  String? isim;

  Ogrenci(this.NO, this.isim);
  Ogrenci.noOlmadan(this.isim);
  Ogrenci.isimOlmadan(this.NO);

  factory Ogrenci.factoryKurucu(int? num, String? isim) {
    if (num! < 0 || isim?.length == 0)
      return Ogrenci(num, isim);
    else
      return Ogrenci(num, isim);
  }
  void BilgiVer() {
    print(
        "No : ${NO == null ? 0 : NO} , İsim : ${isim == null ? "İsim Yok" : isim}");
  }
}
