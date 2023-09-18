// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataProfileResponse _$DataProfileResponseFromJson(Map<String, dynamic> json) =>
    DataProfileResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      credit: json['credit'] as int?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      points: json['points'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DataProfileResponseToJson(
        DataProfileResponse instance) =>
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
