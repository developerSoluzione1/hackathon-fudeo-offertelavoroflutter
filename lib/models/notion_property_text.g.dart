// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_property_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotionPropertyText _$$_NotionPropertyTextFromJson(
        Map<String, dynamic> json) =>
    _$_NotionPropertyText(
      type: json['type'] as String,
      text: NotionPropertyTextContent.fromJson(
          json['text'] as Map<String, dynamic>),
      annotations: NotionPropertyTextAnnotation.fromJson(
          json['annotations'] as Map<String, dynamic>),
      plainText: json['plainText'] as String?,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$_NotionPropertyTextToJson(
        _$_NotionPropertyText instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'annotations': instance.annotations,
      'plainText': instance.plainText,
      'href': instance.href,
    };