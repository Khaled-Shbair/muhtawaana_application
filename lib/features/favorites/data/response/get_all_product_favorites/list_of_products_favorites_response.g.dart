// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_products_favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfProductsFavoritesResponse _$ListOfProductsFavoritesResponseFromJson(
        Map<String, dynamic> json) =>
    ListOfProductsFavoritesResponse(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ProductFavoritesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      perPage: json['per_page'] as int?,
      lastPage: json['last_page'] as int?,
      firstPageUrl: json['first_page_url'] as String?,
      to: json['to'] as int?,
      from: json['from'] as int?,
      path: json['path'] as String?,
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      prevPageUrl: json['prev_page_url'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListOfProductsFavoritesResponseToJson(
        ListOfProductsFavoritesResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'to': instance.to,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page_url': instance.lastPageUrl,
      'path': instance.path,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
    };
