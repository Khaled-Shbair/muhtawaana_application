// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_current_page_of_category_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCurrentPageOfCategoryDetailsResponse
    _$ProductCurrentPageOfCategoryDetailsResponseFromJson(
            Map<String, dynamic> json) =>
        ProductCurrentPageOfCategoryDetailsResponse(
          id: json['id'] as int?,
          price: (json['price'] as num?)?.toDouble(),
          oldPrice: (json['old_price'] as num?)?.toDouble(),
          discount: (json['discount'] as num?)?.toDouble(),
          inCart: json['in_cart'] as bool?,
          inFavorites: json['in_favorites'] as bool?,
          description: json['description'] as String?,
          name: json['name'] as String?,
          image: json['image'] as String?,
          images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$ProductCurrentPageOfCategoryDetailsResponseToJson(
        ProductCurrentPageOfCategoryDetailsResponse instance) =>
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
