// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_data_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerDataHomeResponse _$BannerDataHomeResponseFromJson(
        Map<String, dynamic> json) =>
    BannerDataHomeResponse(
      id: json['id'] as int?,
      image: json['image'] as String?,
      category: json['category'],
      product: json['product'],
    );

Map<String, dynamic> _$BannerDataHomeResponseToJson(
        BannerDataHomeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'category': instance.category,
      'product': instance.product,
    };
