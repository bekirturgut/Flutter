void main(List<String> args) {
  User user1 = User();
  NormalUser normal1 = NormalUser();
  SadeceOkuyabilenNormalUser sadece1 = SadeceOkuyabilenNormalUser();
  AdminUser admin1 = AdminUser();

  User admin2 = AdminUser(); // upcasting denir.

  List<User> TumUserler = [];

  TumUserler.add(AdminUser());
  TumUserler.add(
      SadeceOkuyabilenNormalUser()); // bu sayede birden çok aynı sınıftan olan verileri listede tutabilirim.
  TumUserler.add(NormalUser());

  Test(user1); //
  Test(normal1); //
  Test(sadece1); // Buna polimorfizm yani çokbiçimlilik denir.
  Test(admin1); //
  Test(admin2); //
}

void Test(User kullanici) {
  kullanici.GirisYap();
}

class User {
  String email = "";
  String password = "";

  void GirisYap() {
    print("User Giriş Yaptı...");
  }
}

class NormalUser extends User {
  void DavetEt() {
    print("Davet Edildi...");
  }

  @override
  void GirisYap() {
    print("Normal User Giriş Yaptı...");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void SadeceOkuma() {
    print("Ben Sadece Okuyabilirim...");
  }

  @override
  void GirisYap() {
    print("Sadece Okuyabilen User Giriş Yaptı...");
  }
}

class AdminUser extends User {
  void TumKullanicilariListele() {
    print("Toplam User Sayısı : 20");
  }

  @override
  void GirisYap() {
    print("Admin User Giriş Yaptı...");
  }
}
