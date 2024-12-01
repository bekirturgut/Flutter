void main(List<String> args) {
  Sekil kare = Kare(4);
  Sekil dikdortgen = Dikdortgen(10, 5);
  kare.Selamla();
  print(kare.AlanHesapla());
  print(kare.CevreHesapla());
  dikdortgen.Selamla();
  print(dikdortgen.AlanHesapla());
  print(dikdortgen.CevreHesapla());
}

abstract class Sekil {
  double AlanHesapla();
  double CevreHesapla();
  void Selamla() {
    print("Ben Şekil Sınıfındanım...");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);

  @override
  double AlanHesapla() {
    return (kenar * kenar).toDouble();
  }

  @override
  double CevreHesapla() {
    return 4 * kenar.toDouble();
  }

  void Selamla() {
    print("Ben Kareyim...");
  }
}

class Dikdortgen extends Sekil {
  int kisakenar = 0;
  int uzunkenar = 0;
  Dikdortgen(this.kisakenar, this.uzunkenar);
  @override
  double AlanHesapla() => kisakenar * uzunkenar.toDouble();

  @override
  double CevreHesapla() => 2 * kisakenar.toDouble() + 2 * uzunkenar.toDouble();
  void Selamla() {
    print("Ben Dikdörtgenim...");
  }
}
