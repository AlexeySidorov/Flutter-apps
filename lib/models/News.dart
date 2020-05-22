import 'package:json_annotation/json_annotation.dart';

part 'News.g.dart';

@JsonSerializable()
class News {
  int id;
  String title;
  String descrtiption;
  String shortDescription;
  String imageUrl;
  int actorId;
  int createDate;
  int modificationDate;

  News(
      {this.id,
      this.title,
      this.descrtiption,
      this.shortDescription,
      this.imageUrl,
      this.actorId,
      this.createDate,
      this.modificationDate});

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
