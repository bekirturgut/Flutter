void main(List<String> args) {
  Araba benim = Araba(2024, "YAMAHA", "R25");
  benim.BilgileriVer();
  Araba senin = Araba.modelsiz(2024, "KAWASAKİ");
  senin.BilgileriVer();
  Araba onun = Araba.sadeceyil(2024);
  onun.BilgileriVer();
}

class Araba {
  int? yil;
  String? marka;
  String? model;

  Araba(int? Yil, String Marka, String Model) {
    this.yil = Yil;
    this.marka = Marka;
    this.model = Model;
  }
  Araba.modelsiz(int? Yil, String Marka) {
    this.yil = Yil;
    this.marka = Marka;
  }
  Araba.sadeceyil(int? Yil) {
    this.yil = Yil;
  }
  void BilgileriVer() {
    print(
        "Üretim Yılı : $yil\nMarka : ${marka == null ? "Marka Yok" : marka}\nModel : ${model == null ? "Model Yok" : model}\n******************");
  }
}
