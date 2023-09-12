// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_product_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfProductDetailsResponse _$DataOfProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfProductDetailsResponse(
      inCart: json['in_cart'] as bool?,
      inFavorites: json['in_favorites'] as bool?,
      oldPrice: (json['old_price'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      id: json['id'] as int?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DataOfProductDetailsResponseToJson(
        DataOfProductDetailsResponse instance) =>
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
