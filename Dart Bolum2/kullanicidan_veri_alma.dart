import "dart:io";

void main(List<String> args) {
  stdout.write("İsim giriniz : ");
  String? isim = stdin
      .readLineSync(); //stdin methodlarında readlinesync ile veri alırız bunu için io kütüphanesi ekleriz
  print(isim);

  stdout.write("İsim giriniz : ");
  int? yas = int.parse(stdin
      .readLineSync()!); // int.parse ile tam sayıya dönüştürürüz ! olmazsa yine hata verir
  print(yas);
}
