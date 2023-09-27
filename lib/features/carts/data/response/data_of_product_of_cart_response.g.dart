// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_product_of_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfProductOfCartResponse _$DataOfProductOfCartResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfProductOfCartResponse(
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      inCart: json['in_cart'] as bool?,
      inFavorites: json['in_favorites'] as bool?,
      id: json['id'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      oldPrice: (json['old_price'] as num?)?.toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DataOfProductOfCartResponseToJson(
        DataOfProductOfCartResponse instance) =>
    <String, dynamic>{
      'images': instance.images,
      'in_favorites': instance.inFavorites,
      'in_cart': instance.inCart,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
    };
