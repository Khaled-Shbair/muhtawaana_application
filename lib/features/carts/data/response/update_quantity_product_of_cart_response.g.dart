// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_quantity_product_of_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateQuantityOfProductCartResponse
    _$UpdateQuantityOfProductCartResponseFromJson(Map<String, dynamic> json) =>
        UpdateQuantityOfProductCartResponse(
          status: json['status'] as bool?,
          message: json['message'] as String?,
        );

Map<String, dynamic> _$UpdateQuantityOfProductCartResponseToJson(
        UpdateQuantityOfProductCartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
