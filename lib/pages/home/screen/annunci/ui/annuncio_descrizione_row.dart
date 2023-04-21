import 'package:flutter/material.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/descrizione.dart';

class AnnuncioDescrizioneRow extends StatelessWidget {
  const AnnuncioDescrizioneRow({super.key, required this.descrizioneList});

  final List<Descrizione> descrizioneList;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "",
        children: descrizioneList.map(
          (single) {
            return TextSpan(
              text: single.text,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: single.isBold ? FontWeight.bold : FontWeight.normal,
                fontStyle:
                    single.isItalic ? FontStyle.italic : FontStyle.normal,
                fontSize: 18,
              ),
            );
          },
        ).toList(),
      ),
    );

    //Text(descrizioneList.length.toString());
  }
}
