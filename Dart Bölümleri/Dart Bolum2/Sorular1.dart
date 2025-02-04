void main(List<String> args) {
  int sayi1 = 1, sayi2 = 2, sayi3 = 3;
  double ortalama = ((sayi1 + sayi2 + sayi3) / 3).toDouble();
  print(ortalama);

  int kenar1 = 5, kenar2 = 5, kenar3 = 10;
  if (kenar1 == kenar2 || kenar1 == kenar3 || kenar2 == kenar3) {
    print("ikizkenar üçgen");
  } else if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("Eşkaner üçgen");
  } else {
    print("çeşitkenar üçgen");
  }

  double vizenot = 15, finalnot = 85;
  double ortalama1 = vizenot * 0.5 + finalnot * 0.5;
  if (ortalama1 >= 50)
    print("Dersi geçtin lan helal");
  else
    print("Dersi geçemedin senin kalıbına tükürüyüm.");

  for (int i = 0; i < 5; i++) {
    print("Merhaba ben bekir");
  }

  for (int i = 1; i < 100; i++) {
    if (i % 15 == 0) {
      print(i);
      print(i * i);
    }
  }

  int faktoriyel = 1;
  for (int i = 1; i <= 15; i++) {
    faktoriyel *= i;
  }
  print(faktoriyel);
}
