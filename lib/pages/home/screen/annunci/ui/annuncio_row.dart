import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/annuncio.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/ui/filter_badge.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/ui/annuncio_row_info_row.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/colors.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/utils.dart' as mutils;

class AnnuncioRow extends StatelessWidget {
  const AnnuncioRow({super.key, required this.annuncio});

  final Annuncio annuncio;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/annuncio/single', extra: annuncio);
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
              annuncio.title,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 4,
            ),
            RowInfoRow(
              label: annuncio.aziendaName,
              icon: Icons.domain,
              isWithIcon: true,
            ),
            if (annuncio.localita.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: RowInfoRow(
                  label: annuncio.localita,
                  isWithIcon: true,
                  icon: Icons.location_on,
                ),
              ),
            const SizedBox(
              height: 4,
            ),
            RowInfoRow(
              label: mutils.formatDatetimeToDisplay(
                  annuncio.createdTime, "d MMMM yyyy"),
              icon: Icons.schedule_outlined,
              isWithIcon: true,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (annuncio.teamName.isNotEmpty)
                  FilterBadge(
                    color: annuncio.teamColor,
                    label: annuncio.teamName,
                  ),
                if (annuncio.contrattoName.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: FilterBadge(
                      color: annuncio.contrattoColor,
                      label: annuncio.contrattoName,
                    ),
                  ),
                if (annuncio.seniorityName.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: FilterBadge(
                      color: annuncio.seniorityColor,
                      label: annuncio.seniorityName,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
