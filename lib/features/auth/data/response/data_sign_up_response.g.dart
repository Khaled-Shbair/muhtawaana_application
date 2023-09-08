// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataSignUpResponse _$DataSignUpResponseFromJson(Map<String, dynamic> json) =>
    DataSignUpResponse(
      token: json['token'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$DataSignUpResponseToJson(DataSignUpResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'token': instance.token,
    };
