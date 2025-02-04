import 'dart:math';

void main(List<String> args) {
  try {
    double deger = KareKokAl(-32);
    print(deger.toStringAsFixed(2));
  } on FormatException catch (e) {
    print("$e");
  } catch (e) {
    print("$e");
  }
}

double KareKokAl(int sayi) {
  if (sayi < 0) {
    throw FormatException("Sayi Negatif Olamaz...");
  } else
    return sqrt(sayi);
}
