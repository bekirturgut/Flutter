void main(List<String> args) {
  Ogrenci bekir = Ogrenci();
  bekir.ogrName = "bekir";
  bekir.ogrNO = 1054;
  bekir.aktif = true;
}

class Ogrenci {
  int? ogrNO;
  String ogrName =
      ""; // tanımlama yaparken bol durum söz konusun olduğundan ya ? yada bir atama yapma zorunluluğu var.
  bool? aktif;
}
