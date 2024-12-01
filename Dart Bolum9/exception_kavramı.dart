void main(List<String> args) {
  print("Program Başladı...");
  try {
    int sayi1 = 100 ~/ int.parse("asffsda");
    print(sayi1);
  } on IntegerDivisionByZeroException {
    print("0'a Bölme Hatası Yakalandı.");
  } /*catch (e) {
    print("Hata çıktı $e.");
  } */
  on FormatException catch (e) {
    print(
        "Yanlış bölme yapıldı , $e hatası bulundu , hatalı kısım ${e.source}");
  } finally {
    print("işlem bitti.");
  }
  print("program bitti.");
}
