void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  liste.forEach((element) {
    print(
        "Element $element"); // bu fonksiyon kendi içinde bir for döngüsü fonksiyonu çağırmış gibi bişi oluyor.
  });

  liste.forEach(CallBack); // alttaki fonksiyonu beraberinde çalıştırır.
}

void CallBack(int a) {
  print("Eleman $a");
}
