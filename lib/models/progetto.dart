import 'package:soluzione1_hackathon_fudeo_flutter/models/descrizione.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/notion_page.dart';

class Progetto {
  late String title;
  List<Descrizione> richiestaList = [];
  List<Descrizione> descrizioneList = [];
  String hrefProgetto = '';

  Progetto();

  Progetto.fromNotionPage(NotionPage notionPage) {
    title = notionPage.properties!["Codice"]!.title!.first.plainText != null
        ? notionPage.properties!["Codice"]!.title!.first.plainText!
            .split("|")[0]
            .trim()
        : (notionPage.properties!["Codice"]!.title!.first.text != null
            ? notionPage.properties!["Codice"]!.title!.first.text!.content
                .split("|")[0]
                .trim()
            : "");

    if (notionPage.properties!["Richiesta di lavoro"]!.richText!.isNotEmpty) {
      richiestaList = notionPage.properties!["Richiesta di lavoro"]!.richText!
          .map((single) => Descrizione.fromNotionPropertyText(single))
          .toList();
    }

    if (notionPage
        .properties!["Descrizione del progetto"]!.richText!.isNotEmpty) {
      descrizioneList = notionPage
          .properties!["Descrizione del progetto"]!.richText!
          .map((single) => Descrizione.fromNotionPropertyText(single))
          .toList();
    }

    if (notionPage.properties!["Come candidarsi"]!.richText!.isNotEmpty) {
      hrefProgetto = notionPage
              .properties!["Come candidarsi"]!.richText!.first.href ??
          notionPage.properties!["Come candidarsi"]!.richText!.first.plainText!;
    }
  }
}
