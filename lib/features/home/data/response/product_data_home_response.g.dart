// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDataHomeResponse _$ProductDataHomeResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDataHomeResponse(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      oldPrice: (json['old_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      inCart: json['in_cart'] as bool?,
      inFavorites: json['in_favorites'] as bool?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDataHomeResponseToJson(
        ProductDataHomeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'in_favorites': instance.inFavorites,
      'in_cart': instance.inCart,
      'images': instance.images,
    };
