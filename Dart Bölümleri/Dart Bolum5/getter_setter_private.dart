import 'KullaniciIslemleri.dart';

void main(List<String> args) {
  KullaniciIslemleri db = KullaniciIslemleri();
  bool sonuc = db.baglan();
  if (sonuc == true)
    print("Bağlantı başarılı...");
  else
    print("Bağlantı başarısız...");
}
// değişken adının başına _ koyarsan private değişken haline gelir.
