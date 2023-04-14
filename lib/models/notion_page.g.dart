// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotionPage _$$_NotionPageFromJson(Map<String, dynamic> json) =>
    _$_NotionPage(
      object: json['object'] as String?,
      id: json['id'] as String?,
      createdTime: json['createdTime'] as String?,
      lastEditedTime: json['lastEditedTime'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NotionPageProperty.fromJson(e as Map<String, dynamic>)),
      ),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_NotionPageToJson(_$_NotionPage instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'createdTime': instance.createdTime,
      'lastEditedTime': instance.lastEditedTime,
      'properties': instance.properties,
      'url': instance.url,
    };
