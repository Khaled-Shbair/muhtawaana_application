// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductFavoritesResponse _$ProductFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    ProductFavoritesResponse(
      id: json['id'] as int?,
      product: json['product'] == null
          ? null
          : DataOfProductFavoritesResponse.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductFavoritesResponseToJson(
        ProductFavoritesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
    };
