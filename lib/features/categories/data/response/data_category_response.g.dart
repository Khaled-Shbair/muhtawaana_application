// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataCategoryResponse _$DataCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    DataCategoryResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$DataCategoryResponseToJson(
        DataCategoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
