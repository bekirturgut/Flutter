void main(List<String> args) {
  final String str =
      "Bekir"; // bu sayede değiştirilemeyen bir değişken tanımlamış oldum
  // str = "Turgut"; // bu kod çalışmaz çünkü değişmez bir değişkende değişiklik yapamam
  print(str);
  const String str1 = "Bekir"; // buda final gibi
  // str1 = "Turgut"; // bu kod da çalışmaz hata verir
  print(str1);
  // iki değişmez veri aynı olsada eşit olmaz
  // liste yapısında değişmez veri dizisine eleman ekleyebilirsin yada silebilirsin.
}
