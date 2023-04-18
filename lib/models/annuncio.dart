import 'package:soluzione1_hackathon_fudeo_flutter/models/notion_page.dart';

class Annuncio {
  late String title;
  late String contrattoName;
  late String contrattoColor;
  late String teamName;
  late String teamColor;
  late String aziendaName;

  Annuncio();

  Annuncio.fromNotionPage(NotionPage notionPage) {
    title = notionPage.properties!["Name"]!.title!.first.plainText ??
        notionPage.properties!["Name"]!.title!.first.text!.content;
    contrattoName = notionPage.properties!["Contratto"]!.select!.name;
    contrattoColor = notionPage.properties!["Contratto"]!.select!.color;
    teamName = notionPage.properties!["Team"]!.select!.name;
    teamColor = notionPage.properties!["Team"]!.select!.color;
    aziendaName = notionPage
            .properties!["Nome azienda"]!.richText!.first.plainText ??
        notionPage.properties!["Nome azienda"]!.richText!.first.text!.content;
  }
}
