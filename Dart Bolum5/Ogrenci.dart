import 'dart:math';

class Ogrenci {
  int? _ogrNO;
  int? _ogrNOT;

  Ogrenci() {
    this._ogrNO = Random().nextInt(100);
    this._ogrNOT = Random().nextInt(100);
  }

  void set NotAta(int not) => this._ogrNOT = not;

  int? get NotVer => _ogrNOT;

  void BilgileriVer() {
    print("Öğrenci NO : $_ogrNO , Öğrenci Notu : $_ogrNOT");
  }
}
