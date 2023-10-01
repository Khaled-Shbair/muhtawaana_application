// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfProfileResponse _$DataOfProfileResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfProfileResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      token: json['token'] as String?,
      credit: json['credit'] as int?,
      points: json['points'] as int?,
    );

Map<String, dynamic> _$DataOfProfileResponseToJson(
        DataOfProfileResponse instance) =>
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
