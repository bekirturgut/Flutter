void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar.");
  Future<String> sonuc = UzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek alma operasyonu bitti."));
  print("Peynir Zeytin Hazırlanır.");
  print("Kahvaltı Hazır");
}

Future<String> UzunSurenIslem() {
  print("Çocuk ekmek almaya gider.");
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //return "çocuk ekmekle eve girer.";
    throw ("bakkalada ekmek kalmamış");
  });
  return sonuc;
}
