// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_of_edit_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOfEditProfileResponse _$DataOfEditProfileResponseFromJson(
        Map<String, dynamic> json) =>
    DataOfEditProfileResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      credit: json['credit'] as int?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      points: json['points'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DataOfEditProfileResponseToJson(
        DataOfEditProfileResponse instance) =>
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
