// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_products_of_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfProductsOfCartResponse _$ListOfProductsOfCartResponseFromJson(
        Map<String, dynamic> json) =>
    ListOfProductsOfCartResponse(
      quantity: json['quantity'] as int?,
      product: json['product'] == null
          ? null
          : DataOfProductOfCartResponse.fromJson(
              json['product'] as Map<String, dynamic>),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ListOfProductsOfCartResponseToJson(
        ListOfProductsOfCartResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'product': instance.product,
    };
