// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_cart_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCartProductsResponse _$GetAllCartProductsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllCartProductsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataOfCartProductsResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllCartProductsResponseToJson(
        GetAllCartProductsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
