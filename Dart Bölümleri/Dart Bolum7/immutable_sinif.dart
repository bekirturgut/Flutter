void main(List<String> args) {
  Student ogr1 = Student("Bekir");
  Student ogr2 = Student("Turgut");
  Student ogr3 = Student("Hapoglu");
  ogr1.OgrenciTanit();
  ogr2.OgrenciTanit();
  ogr3.OgrenciTanit();
}

class Student {
  static int id = 1;
  final String isim;
  final int idNO = id;

  Student(this.isim) {
    id++;
  }
  void OgrenciTanit() => print("Merhaba ben $idNO nolu Ogrenci $isim");
}
