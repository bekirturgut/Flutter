class Musteri {
  int? _musteriNO;

  Musteri(this._musteriNO);

  void set MusteriNoAta(int no) => this._musteriNO = no;

  // burda getter ve setter var set veri değişikliği için get ise veri almak için private olduğu için bunlara mainden erişilmez

  String get MusteriNoVer => _musteriNO.toString();
}
