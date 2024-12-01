void main(List<String> args) {
  Map<String, int> sozluk = {"ankara": 1, "istanbul": 2, "konya": 3};
  // bu yapı pythondaki sözlük yapısıdır köşeli parantez liste yapısı süslü parantez sözlük yapısı anlamına gelir .

  print(sozluk);
  print(sozluk[
      "ankara"]); // bu yapıda index yerine key kısmını yazarız , key value mantığı vardır.

  for (String isim in sozluk.keys) print(isim);

  if (sozluk.containsKey("Ankara"))
    print("ankara var"); // key de varsa yazıdrma methodu.
}
