void main(List<String> args) {
  print(cevrehesapla(1, 2, 3));
  HarfYazdirma("Bekir Turgut Hapoglu");
}

int cevrehesapla(int kenar1, int kenar2, int kenar3) {
  return kenar1 + kenar2 + kenar3;
}

void HarfYazdirma(String Metin) {
  for (int i = 0; i < Metin.length; i++) {
    print(Metin[i]);
  }
}

int hesapla(int s1, int s2) => s1 > s1
    ? s1
    : s2; // burda s1 s2 kıyaslama yapıp true ise s1 değil ise s2 döndürmesini istedik.

int topla(int s1, int s2,
    [int s3 =
        0]) // burda köşeli parantez sayesinde 2 veya 3 parametre alabilir hata çıkarmadan ve eğer 3. parametre girilmezse default olarak 0 alır.
{
  return s1 + s2 + s3;
}
