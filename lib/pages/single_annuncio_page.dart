// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/notion_page.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/utils.dart' as mutils;

class SingleAnnuncioPage extends StatelessWidget {
  SingleAnnuncioPage({super.key, required this.annuncio});

  final NotionPage annuncio;

  late String annuncioName;
  late String contrattoName;
  late String contrattoColor;
  late String teamName;
  late String teamColor;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    annuncioName = annuncio.properties!["Name"]!.title!.first.text.content;
    contrattoName = annuncio.properties!["Contratto"]!.select!.name;
    contrattoColor = annuncio.properties!["Contratto"]!.select!.color;
    teamName = annuncio.properties!["Team"]!.select!.name;
    teamColor = annuncio.properties!["Team"]!.select!.color;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              annuncioName,
              style: textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: const Text("Team"),
            trailing: Chip(
              side: BorderSide(
                color: mutils.getColorForSelect(teamColor),
              ),
              label: Text(
                teamName,
                style:
                    TextStyle(color: mutils.getLabelColorForSelect(teamColor)),
              ),
              backgroundColor: mutils.getColorForSelect(teamColor),
            ),
          ),
          ListTile(
            title: const Text("Contratto"),
            trailing: Chip(
              side: BorderSide(
                color: mutils.getColorForSelect(contrattoColor),
              ),
              label: Text(
                contrattoName,
                style: TextStyle(
                    color: mutils.getLabelColorForSelect(contrattoColor)),
              ),
              backgroundColor: mutils.getColorForSelect(contrattoColor),
            ),
          )
        ],
      ),
    );
  }
}
