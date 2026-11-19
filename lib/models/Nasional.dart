// To parse this JSON data, do
//
//     final nasional = nasionalFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Nasional> nasionalFromJson(String str) => List<Nasional>.from(json.decode(str).map((x) => Nasional.fromJson(x)));

String nasionalToJson(List<Nasional> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Nasional {
    DateTime date;
    String localName;
    String name;
    String countryCode;
    bool fixed;
    bool global;
    dynamic counties;
    dynamic launchYear;
    List<String> types;

    Nasional({
        required this.date,
        required this.localName,
        required this.name,
        required this.countryCode,
        required this.fixed,
        required this.global,
        required this.counties,
        required this.launchYear,
        required this.types,
    });

    factory Nasional.fromJson(Map<String, dynamic> json) => Nasional(
        date: DateTime.parse(json["date"]),
        localName: json["localName"],
        name: json["name"],
        countryCode: json["countryCode"],
        fixed: json["fixed"],
        global: json["global"],
        counties: json["counties"],
        launchYear: json["launchYear"],
        types: List<String>.from(json["types"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "localName": localName,
        "name": name,
        "countryCode": countryCode,
        "fixed": fixed,
        "global": global,
        "counties": counties,
        "launchYear": launchYear,
        "types": List<dynamic>.from(types.map((x) => x)),
    };
}
