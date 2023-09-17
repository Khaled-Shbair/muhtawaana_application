// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_products_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllProductsFavoritesResponse _$AllProductsFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    AllProductsFavoritesResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ListOfProductsFavoritesResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllProductsFavoritesResponseToJson(
        AllProductsFavoritesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
