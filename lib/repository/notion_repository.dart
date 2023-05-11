import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:soluzione1_hackathon_fudeo_flutter/models/notion_page.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/request_headers.dart'
    as request_headers;

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getAnnunciLavoroList() async {
    var response = await http.post(
      Uri.parse(
          '${dotenv.env["NOTION_BASE_URL"]}/${dotenv.env["NOTION_DB_ANNUNCI"]}/query'),
      headers: request_headers.getNotionHeaders(),
      body: '{"page_size": 100}',
    );

    final responseBodyParsed = json.decode(response.body);
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }

  Future<List<NotionPage>?> getProgettiFreelanceList() async {
    var response = await http.post(
      Uri.parse(
          '${dotenv.env["NOTION_BASE_URL"]}/${dotenv.env["NOTION_DB_PROGETTI"]}/query'),
      headers: request_headers.getNotionHeaders(),
      body: '{"page_size": 100}',
    );

    final responseBodyParsed = json.decode(response.body);
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
