// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'News.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    id: json['id'] as int,
    title: json['title'] as String,
    descrtiption: json['descrtiption'] as String,
    shortDescription: json['shortDescription'] as String,
    imageUrl: json['imageUrl'] as String,
    actorId: json['actorId'] as int,
    createDate: json['createDate'] as int,
    modificationDate: json['modificationDate'] as int,
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'descrtiption': instance.descrtiption,
      'shortDescription': instance.shortDescription,
      'imageUrl': instance.imageUrl,
      'actorId': instance.actorId,
      'createDate': instance.createDate,
      'modificationDate': instance.modificationDate,
    };
