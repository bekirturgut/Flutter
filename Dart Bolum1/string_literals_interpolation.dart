/*
  debug yaparken seni launch.json dosyasına atar orda sen alta "program" : "_____" bu alt çizgi kısmına nerden başlayacağını seçeceksin buna dikkat et
*/
void main(List<String> args) {
  String isim = "Bekir";
  String soyisim = "Turgut";
  print(isim + " " + soyisim); // + ile verileri yazdırabilirsin
  print(
      "$isim $soyisim olarak ta yazılabilir"); // $ işareti ile tırnak içinde değişken yazdırabilirsin
  print("İsim'in karakter sayisi : " +
      isim.length
          .toString()); //int ve stringi aynı anda yazdıramazsın bunun için ToString kullanırsın.
  print(
      "Soyisim'in karakter sayisi : ${soyisim.length.toString()}"); // meint içinde birden çok method kullanacaksan {} arasında yazacaksın
}
