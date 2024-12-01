void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 10);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> liste = [emre, hasan, ayse, yunus, ali];

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listefrom = List.from(liste);
  var listefrom1 = List<Ogrenci>.of(liste.whereType());
  print(liste1);
  print(listefrom);
  print(listefrom1);
  /*
  LİSTE FONKSİYONLARI 
    var liste1 = List<Ogrenci>.filled(a,Ogrenci(0,"",0)); ==> a elemanlı bri ogrenci listesi oluştur anlamına gelir.
    var listefrom = List<Ogrenci>.from(elements);  ==> elemants bir liste ve dizi olmak üzere onu listefrom listesine aktarır , dizi içeriği türüne bakmaz.
    var listefrom = List.of(elements);  ==> buda from gibi yapar ama içindeki elemanların aynı veri tipinde olmasını ister int ile string olamaz.
    var listefrom = List.of(liste.whereType<Ogrenci>()); ==> listedeki elemanları gez ve Ogrenci türündekilerle bana liste yap anlamına gelir.
  */

  List<dynamic> sayiliste = [];
  sayiliste.add(1);
  sayiliste.addAll(liste);
  bool sonuc = liste.any((Person element) => element.id > 6);
  print(sayiliste);
  print(sonuc);
  Map<int, Person> yeniMap = liste.asMap();
  print(yeniMap);
  print(liste.contains(emre));
  bool sonuc1 = liste.every((elemant) => elemant.isim.length > 10);
  print(sonuc1);
  /*
  LİSTE METHODLARI
    .add(a) ==> diziye a elemanını ekle anlamına gelir.
    .addAll(a) ==> a elemanı yada a dizisinin tamamını ekle anlamına gelir.
    liste.any((Person element) => element.id > 10) ==> her elemanın gez id si 10 dan büyük varmı diye sorar.
    liste.asMap() ==> listeyi map tipine göre ayarlayarak yeni bri map değişkenine atar.
    liste.contains(emre) ==> tim listede emre adında birisi varmı diye bakar.
    liste.every((elemant) => elemant.isim.length > 10) ==> lsitedeki tüm elemanların isimi 10 elemandan büyük mü diye bakar any tek varsa true ama every hepsi sağlarsa true döndürür.

  */
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  @override
  String toString() {
    return "id $id ve isim $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanderssayisi = 0;

  Ogrenci(id, isim, alinanderssayisi) : super(id, isim);

  @override
  String toString() {
    return "id $id ve isim $isim ve alınan ders sayısı $alinanderssayisi\n";
  }
}
