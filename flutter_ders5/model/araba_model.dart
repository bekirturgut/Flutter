import 'dart:convert';

class Araba {
  final String arabaAdi;
  final String ulke;
  final int yil;
  final List<Model> model;

  Araba({
    required this.arabaAdi,
    required this.ulke,
    required this.yil,
    required this.model,
  });

  factory Araba.fromRawJson(String str) => Araba.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Araba.fromJson(Map<String, dynamic> json) => Araba(
        arabaAdi: json["araba_adi"],
        ulke: json["ulke"],
        yil: json["yil"],
        model: List<Model>.from(json["model"].map((x) => Model.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "araba_adi": arabaAdi,
        "ulke": ulke,
        "yil": yil,
        "model": List<dynamic>.from(model.map((x) => x.toJson())),
      };
}

class Model {
  final String modelAdi;
  final int fiyat;
  final bool benzinli;

  Model({
    required this.modelAdi,
    required this.fiyat,
    required this.benzinli,
  });

  factory Model.fromRawJson(String str) => Model.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        modelAdi: json["model_adi"],
        fiyat: json["fiyat"],
        benzinli: json["benzinli"],
      );

  Map<String, dynamic> toJson() => {
        "model_adi": modelAdi,
        "fiyat": fiyat,
        "benzinli": benzinli,
      };
}
