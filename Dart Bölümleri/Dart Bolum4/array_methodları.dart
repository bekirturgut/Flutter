void main(List<String> args) {
  List sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(sayilar.first);
  print(sayilar.last);
  print(sayilar
      .isEmpty); // liste boş mu değil mi onu döndürür true yada false olarak.
  print(sayilar.reversed); // listeyi tersten yazdırır.
  sayilar.remove(
      3); // ilk gördüğü 3 elemanını çıkarır , sabit boyutlu dizilerde bu methodlar çalışmaz.
  print(sayilar);
  sayilar.removeAt(0); // indexteki elemanı çıkarır.
  print(sayilar);
  //sayilar.clear(); // listenin tamamını siler boş hale getirir.
  if (sayilar.contains(8))
    print("var"); // 8 elemanı var mı yok mu onu kontrol eder.
  print(sayilar.elementAt(0)); // indexteki elemanı yazdırmaya yarar.
  print(sayilar.indexOf(5)); // 5'in index numarasını verir.
  sayilar.shuffle(); // sayıları rasgele karar.
  print(sayilar);
}
