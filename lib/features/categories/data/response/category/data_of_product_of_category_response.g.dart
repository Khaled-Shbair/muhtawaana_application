// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_product_of_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfProductOfCategoryResponse _$DataOfProductOfCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfProductOfCategoryResponse(
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

Map<String, dynamic> _$DataOfProductOfCategoryResponseToJson(
        DataOfProductOfCategoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
      'description': instance.description,
      'images': instance.images,
      'in_favorites': instance.inFavorites,
      'in_cart': instance.inCart,
    };
