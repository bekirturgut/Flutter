void main(List<String> args) {
  int sayi1 = 18, sayi2 = 18;
// && ve , || veya , < küçüktür , > büyüktür
  if (sayi1 > sayi2)
    print("$sayi1 Buyuk");
  else if (sayi1 < sayi2)
    print("$sayi2 Buyuk");
  else
    print("İki Sayida eşittir.");
  int buyuk;

  sayi1 > sayi2
      ? buyuk = sayi1
      : buyuk = sayi2; // if bloğu ? ile de yapılabilir

  print("Buyuk olan sayi = $buyuk");
}
