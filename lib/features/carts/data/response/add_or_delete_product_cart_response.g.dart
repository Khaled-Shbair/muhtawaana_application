// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_delete_product_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrDeleteProductCartResponse _$AddOrDeleteProductCartResponseFromJson(
        Map<String, dynamic> json) =>
    AddOrDeleteProductCartResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddOrDeleteProductCartResponseToJson(
        AddOrDeleteProductCartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
