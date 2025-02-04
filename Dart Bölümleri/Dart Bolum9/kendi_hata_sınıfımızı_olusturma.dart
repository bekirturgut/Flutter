void main(List<String> args) {
  try {
    Ogrenci bekir = Ogrenci(-5);
    print(bekir.yas);
  } catch (e) {
    print(e);
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException();
    } else
      this.yas;
  }
}

class AgeException implements Exception {
  String mesaj = "Yaş negatif olamaz";

  AgeException({mesaj});

  @override
  String toString() {
    return "Hatanın to string methodu çalıştı...";
  }
}
