import 'dart:convert';

Yaddes yaddesFromJson(String str) => Yaddes.fromJson(json.decode(str));

String yaddesToJson(Yaddes data) => json.encode(data.toJson());

class Yaddes {
  List<String> havej;
  List<String> shakbhaji;
  List<String> lot;


  Yaddes({
    required this.havej,
    required this.shakbhaji,
    required this.lot,

  });

  factory Yaddes.fromJson(Map<String, dynamic> json) => Yaddes(
    havej: List<String>.from(json["havej"].map((x) => x)),
    shakbhaji: List<String>.from(json["shakbhaji"].map((x) => x)),
    lot: List<String>.from(json["lot"].map((x) => x)),

  );

  Map<String, dynamic> toJson() => {
    "havej": List<dynamic>.from(havej.map((x) => x)),
    "shakbhaji": List<dynamic>.from(shakbhaji.map((x) => x)),
    "lot": List<dynamic>.from(lot.map((x) => x)),

  };
}