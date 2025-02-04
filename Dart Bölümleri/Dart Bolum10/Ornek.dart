void main(List<String> args) {
  IDyeGore(22100011036);
  print("Bulundu...");
}

IDyeGore(int id) {
  print("$id numarasına sahip kullanıcı getiriliyor...");
  Future.delayed(Duration(seconds: 2), () {
    print("$id Numarasına Sahip Kişi : Bekir Turgut");
  });
}
