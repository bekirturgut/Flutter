void main(List<String> args) {
  int birinci = 5;
  print(birinci);

  void a() {
    int ikinci = 4;
    print(ikinci);
    void b() {
      int ucuncu = 3;
      print(ucuncu);
    }
  }
}

// burda mainde void a daki yada b deki değişkenleri çağıramam ama onların içinde üst sınıftaki elemanları çağırabilirim.
// olduğu blokta en üst sınıftaki değişkenler alt sınıftaki kod blokları tarafından çağırabilir.