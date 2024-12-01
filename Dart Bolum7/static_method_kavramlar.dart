void main(List<String> args) {}

class Matematik {
  int s1 = 0;
  int s2 = 0;

  static double pi = 3.14;
  // static direkt sınıf özelliğini tutar ve değişkenler tarafından erişilemez bellekte ayrı yerde tutulur.
  static void SinifSoyle() => print("Ben Matematiğim.");

  Matematik(this.s1, this.s2);

  void topla() => print("Toplam : ${s1 + s2}");
  void cikar() => print("Çıkar : ${s1 - s2}");
  void carp() => print("Çarp : ${s1 * s2}");
  void bol() => print("Böl : ${s1 / s2}");
}
