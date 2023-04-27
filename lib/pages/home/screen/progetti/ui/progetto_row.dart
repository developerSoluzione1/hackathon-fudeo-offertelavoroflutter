import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/progetto.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/ui/filter_badge.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/colors.dart';

class ProgettoRow extends StatelessWidget {
  const ProgettoRow({super.key, required this.progetto});

  final Progetto progetto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/progetto/single', extra: progetto);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: BrandColors.backgroundCardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              progetto.title,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (progetto.tipoRelazioneName.isNotEmpty)
                  FilterBadge(
                    color: progetto.tipoRelazioneColor,
                    label: progetto.tipoRelazioneName,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
