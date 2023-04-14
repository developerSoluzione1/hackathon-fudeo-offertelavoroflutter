// ignore_for_file: prefer_const_constructors

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/notion_page_property.dart';

part 'notion_page.freezed.dart';
part 'notion_page.g.dart';

@Freezed(genericArgumentFactories: true)
class NotionPage with _$NotionPage {
  const factory NotionPage({
    String? object,
    String? id,
    String? createdTime,
    String? lastEditedTime,
    //TODO createdBy, lastEditBy, cover, icon, parent, archived
    Map<String, NotionPageProperty>? properties,
    String? url,
  }) = _NotionPage;

  factory NotionPage.fromJson(Map<String, dynamic> json) =>
      _$NotionPageFromJson(json);
}
