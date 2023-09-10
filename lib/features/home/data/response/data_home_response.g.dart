// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataHomeResponse _$DataHomeResponseFromJson(Map<String, dynamic> json) =>
    DataHomeResponse(
      banners: (json['banners'] as List<dynamic>?)
          ?.map(
              (e) => BannerDataHomeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) =>
              ProductDataHomeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataHomeResponseToJson(DataHomeResponse instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'products': instance.products,
    };
