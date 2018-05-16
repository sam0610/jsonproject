// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Inspection.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Inspection _$InspectionFromJson(Map<String, dynamic> json) => new Inspection(
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
    json['name'] as String,
    json['gender'] as String,
    json['count'] as int,
    json['yob'] as String,
    (json['list'] as List)
        ?.map((e) =>
            e == null ? null : new City.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$InspectionSerializerMixin {
  DateTime get date;
  String get name;
  String get gender;
  int get count;
  String get yob;
  List<City> get cities;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date?.toIso8601String(),
        'name': name,
        'gender': gender,
        'count': count,
        'yob': yob,
        'list': cities
      };
}

City _$CityFromJson(Map<String, dynamic> json) => new City(
    json['id'] as int,
    json['name'] as String,
    json['coord'] == null
        ? null
        : new Coord.fromJson(json['coord'] as Map<String, dynamic>),
    json['main'] == null
        ? null
        : new Main.fromJson(json['main'] as Map<String, dynamic>),
    (json['weathers'] as List)
        ?.map((e) =>
            e == null ? null : new Weather.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$CitySerializerMixin {
  int get id;
  String get name;
  Coord get coord;
  Main get main;
  List<Weather> get weathers;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'coord': coord,
        'main': main,
        'weathers': weathers
      };
}
