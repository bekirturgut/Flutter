void main(List<String> args) {
  // + toplama , - çıkarma , / bölme , * çarpma , % mod alma
  // ++ 1 arttırma , -- 1 azaltma
  // += ekle eşitle , -= çıkart eşitle , /= böl eşitle , *= çarp eşitle , %= mod al eşitle
  int sayi = 10;
  int toplama = sayi + 5;
  int cikarma = sayi - 5;
  int carpma = sayi * 5;
  int bolme = (sayi / 5).toInt(); // bölmede bunu kullanman lazım
  int mod = sayi % 5;
  print(
      "Toplama : $toplama , Çıkarma : $cikarma , Çarpma : $carpma , Bölme : $bolme , Mod : $mod");

  // == eşitlik , != eşit olmama , > büyüktür , < küçüktür , >= büyük eşittir , <= küçük eşittir sorgulama
  // && ve , || veya , ! değili heline getirir
}
