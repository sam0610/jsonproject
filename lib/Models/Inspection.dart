import 'package:json_annotation/json_annotation.dart';

//flutter packages pub run build_runner watch
part 'Inspection.g.dart';

//run code => flutter packages pub run build_runner build
@JsonSerializable()
class Inspection extends Object with _$InspectionSerializerMixin {
  final String id;
  final DateTime inspectionDate;
  final String arrivedTime;
  final String leaveTime;
  final String staffName;
  final String postName;
  final String foundLocation;
  final String guestsProportion;
  @JsonKey(includeIfNull: true)
  final String situationRemark;
  final String userid;
  final Grooming grooming;

  Inspection(
      {this.inspectionDate,
      this.staffName,
      this.arrivedTime,
      this.leaveTime,
      this.foundLocation,
      this.postName,
      this.guestsProportion,
      this.situationRemark,
      this.userid,
      this.id,
      this.grooming});

  factory Inspection.fromJson(Map<String, dynamic> json) =>
      _$InspectionFromJson(json);
}

@JsonSerializable()
class Grooming extends Object with _$GroomingSerializerMixin {
  int groomingScore;
  int hairScore;
  int uniformScore;
  int decorationScore;
  int maskWearScore;
  int maskCleanScore;

  Grooming(
      {this.groomingScore = 0,
      this.hairScore = 0,
      this.uniformScore = 0,
      this.decorationScore = 0,
      this.maskCleanScore = 0,
      this.maskWearScore = 0});

  factory Grooming.fromJson(Map<String, dynamic> json) =>
      _$GroomingFromJson(json);
}
