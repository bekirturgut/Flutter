void main(List<String> args) async {
  print("internettin kişi verisi iletilecek...");
  KisiIleIlgiliIslemler();
  print("işlem bitti");
}

void KisiIleIlgiliIslemler() async {
  String sonuc = await kisiverisinigetir();
  print(sonuc.length);
}

Future<String> kisiverisinigetir() {
  return Future.delayed(Duration(seconds: 3), () {
    return "kisi adi emre ve id 100";
  });
}
