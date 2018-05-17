import 'package:json_annotation/json_annotation.dart';

//flutter packages pub run build_runner watch
part 'Inspection.g.dart';

@JsonSerializable()
class Inspection extends Object{

  DateTime date;
  String name;
  String gender;
  int count;
  @JsonKey(nullable: true)
  String yob;

  @JsonKey(name:"list")
  final List<City>cities;


  Inspection(
      this.date,
      this.name,
      this.gender,
      this.count,
      this.yob,
      this.cities);


  factory Inspection.fromJson(Map<String,dynamic> json) => _$InspectionFromJson(json);

}

@JsonSerializable()
class City extends Object{
  int id;
  String name;

  City(this.id, this.name, this.coord, this.main, this.weathers);

  Coord coord;
  Main main;
  List<Weather> weathers;

  factory City.fromJson(Map<String,dynamic> json) => _$CityFromJson(json)

}

class Coord extends Object{
  int in2;
Coord(this.in2);


factory Coord.fromJson(Map<String,dynamic> json)  =>_
}

class Main extends Object{
  String maind;
  Main(this.maind);

  factory Main.fromJson(Map<String,dynamic> json)
}

class Weather extends Object{
  Weather(this.weather3d);
  String weather3d;

  factory Weather.fromJson(Map<String,dynamic> json)
}