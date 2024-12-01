void main(List<String> args) {}

abstract class Hayvan {}

abstract class Ucabilenler {
  void Uc();
}

abstract class Kosabilenler {
  void Kos();
}

abstract class Havlayabilenler {
  void Havla();
}

class Kopek extends Hayvan
    implements
        Havlayabilenler,
        Kosabilenler // bu sayede birden fazla sınıfın özelliklerini toplarlayabildik sadece extends deseydik yapamazdık.
//burda ne oldu kopek hayvan sınıfından özellikleri ise kosabilmesi ve havlayabilmesi olarak ekledik.
{
  @override
  void Havla() {
    // TODO: implement Havla
  }

  @override
  void Kos() {
    // TODO: implement Kos
  }
}

class Kus implements Ucabilenler {
  @override
  void Uc() {
    // TODO: implement Uc
  }
}
