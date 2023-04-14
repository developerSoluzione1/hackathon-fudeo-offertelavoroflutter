import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/notion_page.dart';

class AnnuncioRow extends StatelessWidget {
  const AnnuncioRow({super.key, required this.annuncio});

  final NotionPage annuncio;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(annuncio.properties!["Name"]!.title!.first.text.content),
      onTap: () {
        context.push('/annuncio/single', extra: annuncio);
      },
    );
  }
}
