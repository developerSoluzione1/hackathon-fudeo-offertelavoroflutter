// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/localization/app_localizations_context.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/progetto.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/ui/descrizione_row.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/colors.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/utils.dart' as mutils;

class SingleProgettoPage extends StatelessWidget {
  const SingleProgettoPage({super.key, required this.progetto});

  final Progetto progetto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.copy_outlined),
            onPressed: () {
              mutils.copyToClipboard(progetto.hrefProgetto);
              mutils.showToast(context.loc.labelLinkProgettoCopiato);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const Icon(Icons.share),
              onPressed: () => mutils.showModalShareLinkQrCode(
                  context, progetto.hrefProgetto),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 12,
                  ),
                  child: Text(
                    progetto.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                    bottom: 16,
                  ),
                  child: Text(
                    context.loc.descrizioneProgettoLabel,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                if (progetto.descrizioneList.isNotEmpty)
                  DescrizioneRow(
                    rowsList: progetto.descrizioneList,
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                    bottom: 16,
                  ),
                  child: Text(
                    context.loc.richiestaProgettoLabel,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                if (progetto.richiestaList.isNotEmpty)
                  DescrizioneRow(
                    rowsList: progetto.richiestaList,
                  ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
          SizedBox(
            height: 72,
            child: GestureDetector(
              onTap: () => {mutils.launchURL(progetto.hrefProgetto)},
              child: Container(
                decoration: BoxDecoration(
                  color: BrandColors.primaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                margin: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    context.loc.linkProgettoBtn,
                    style: TextStyle(
                      color: BrandColors.onPrimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
