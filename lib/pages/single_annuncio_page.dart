// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/annuncio.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/utils.dart' as mutils;

class SingleAnnuncioPage extends StatelessWidget {
  const SingleAnnuncioPage({super.key, required this.annuncio});

  final Annuncio annuncio;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

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
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Text(
              annuncio.title,
              style: textTheme.titleLarge,
              textAlign: TextAlign.start,
            ),
          ),
          ListTile(
            title: const Text("Team"),
            trailing: Chip(
              side: BorderSide(
                color: mutils.getColorForSelect(
                  annuncio.teamColor,
                ),
              ),
              label: Text(
                annuncio.teamName,
                style: TextStyle(
                  color: mutils.getLabelColorForSelect(
                    annuncio.teamColor,
                  ),
                ),
              ),
              backgroundColor: mutils.getColorForSelect(
                annuncio.teamColor,
              ),
            ),
          ),
          ListTile(
            title: const Text("Contratto"),
            trailing: Chip(
              side: BorderSide(
                color: mutils.getColorForSelect(
                  annuncio.contrattoColor,
                ),
              ),
              label: Text(
                annuncio.contrattoName,
                style: TextStyle(
                  color: mutils.getLabelColorForSelect(
                    annuncio.contrattoColor,
                  ),
                ),
              ),
              backgroundColor: mutils.getColorForSelect(
                annuncio.contrattoColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
