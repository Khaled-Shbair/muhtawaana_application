// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataLoginResponse _$DataLoginResponseFromJson(Map<String, dynamic> json) =>
    DataLoginResponse(
      token: json['token'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      credit: json['credit'] as int?,
      points: json['points'] as int?,
    );

Map<String, dynamic> _$DataLoginResponseToJson(DataLoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'token': instance.token,
      'points': instance.points,
      'credit': instance.credit,
    };
