// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_product_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfProductFavoritesResponse _$DataOfProductFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfProductFavoritesResponse(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      oldPrice: (json['old_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$DataOfProductFavoritesResponseToJson(
        DataOfProductFavoritesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
      'description': instance.description,
    };
