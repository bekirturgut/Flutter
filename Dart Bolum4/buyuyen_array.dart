void main(List<String> args) {
  List<int?> sayilar = [
    0
  ]; // boyle tnaımlarsan istediğin kadar buyutup kuçultebilirsin , soru işareti eleman eklemede parametre almaması durumuna karşı koyarız.
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(
      3); // direct index erişip ekleyemeyiz çünkü index yok mecbur bu method ile ekleriz.
  sayilar.add(4);
  sayilar.add(5);
  print(sayilar);
  sayilar.length = 10;
  print(sayilar);

  List<int?> sayilar2 = List.filled(2, 0,
      growable:
          true); // 2 elemanlı elemanları 0 olan büyüyebilip küçülebilen liste tanımladık.
  sayilar2[0] = 0;
  sayilar2[1] = 1;
  sayilar2.add(3);
  print(sayilar2);

  List<int?> sayilar3 = List.empty(
      growable:
          true); // bunun List sayilar3 = [] ' den farkı yok aynı anlama gelir empty olayı boş liste almak istediğimizi belirtir.
  sayilar3.add(0);
}
