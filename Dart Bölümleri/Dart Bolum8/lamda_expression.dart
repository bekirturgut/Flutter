void main(List<String> args) {
  var fonksiyon1 = (int a, int b) {
    int toplam = a +
        b; // var diye tanımladım ama aslında Function türünde bir değişken o.
    print(
        toplam); // herşey bir nesne olduğundan bizim toplama işlemi de bir isimsiz fonksiyon gib düşünebiliriz.
  };
  fonksiyon1(5, 10);
  (int s1) => s1 * 2;
}
