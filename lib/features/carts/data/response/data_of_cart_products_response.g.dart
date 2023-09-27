// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_cart_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfCartProductsResponse _$DataOfCartProductsResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfCartProductsResponse(
      cartItems: (json['cart_items'] as List<dynamic>?)
          ?.map((e) =>
              ListOfProductsOfCartResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toDouble(),
      subTotal: (json['sub_total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataOfCartProductsResponseToJson(
        DataOfCartProductsResponse instance) =>
    <String, dynamic>{
      'cart_items': instance.cartItems,
      'sub_total': instance.subTotal,
      'total': instance.total,
    };
