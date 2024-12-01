void main(List<String> args) {
  int secim = 1;
// switch yapısında string de kullanacaksan seçenekleri "" arasına yaz değilse normal yazabilirsin
  switch (secim) {
    case 1:
      print("1 i seçtiniz");
      break;
    case 2:
      print("2 yi seçtiniz");
      break;
    case 3:
      print("3 ü seçtiniz");
      break;
    default:
      print("Secim seçeneklerde yok");
      break;
  }
}
