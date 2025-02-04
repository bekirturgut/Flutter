import "dart:io";

void main(List<String> args) {
  stdout.write(
      "Ögrencinin Vize Notunu Giriniz : "); //bu yazdırma komutu sonunda alt satıra geçmesini engeller
  int? VizeNot = int.parse(stdin.readLineSync()!);
  stdout.write("Ögrencinin Final Notunu Giriniz : ");
  int? FinalNot = int.parse(stdin.readLineSync()!);
  double Ortalama = (VizeNot * 0.5 + FinalNot * 0.5).toDouble();
  if (Ortalama > 50)
    print("Dersi Geçtiniz , Ortalama : $Ortalama");
  else
    print("Dersten Kaldınız , Ortalama : $Ortalama");

  stdout.write("Ürün Maliyet Fiyatını Giriniz : ");
  double? Fiyat = double.parse(stdin.readLineSync()!);
  Fiyat += Fiyat * 0.18;

  print("Yeni Fiyat : $Fiyat");
}
