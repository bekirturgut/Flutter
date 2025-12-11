void main(List<String> args) {
  Asker emre = Er("İbrahim", 22);
  emre.Selamla();
  
  Asker bekir = Asker("bekir", 21);
  bekir.Selamla();
}

class Asker {
  String? ad = "Varsayılan";
  int? yas = 0;
  Asker(this.ad, this.yas) {
    print("Asker Sınıfının Kurulumu Çalıştı...");
  }

  void Selamla() {
    print("Merhaba benim adım $ad , yaşım $yas , Askerim...\n");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    // burdaki super ust sınıfın constructer methodunu çalıştır demektir.
    print("Er Sınıfının Kurulumu Çalıştı...");
  }

  void Selamla() {
    print("Merhaba benim adım $ad , yaşım $yas , Rütbem Er...\n");
  }

  void isimdegistir(String yenisim) {
    super.ad =
        yenisim; // super demek ust sınıfın verilerine eriş anlamına gelir.
  }
}

class Deneme {
  Deneme() {
    print("Deneme Sınıfının Kurulumu Çalıştı...");
  }
}
