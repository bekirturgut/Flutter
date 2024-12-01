void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("${i + 1}.Yazı");
  }

  print("\n\n\n\n");

  List isimliste = ["bekir", "turgut", "hapoglu"];

  for (String gecici in isimliste) {
    print("$gecici");
  }

  print("\n\n\n\n");

  int sayac = 0;

  while (sayac < 10) {
    print("${sayac + 1}.selam");
    sayac++;
  }

  print("\n\n\n\n");
}
