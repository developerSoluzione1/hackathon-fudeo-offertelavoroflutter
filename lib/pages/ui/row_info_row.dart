import 'package:flutter/material.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/colors.dart';

class RowInfoRow extends StatelessWidget {
  const RowInfoRow(
      {super.key,
      required this.label,
      this.icon,
      this.size = 15,
      this.isWithIcon = false});

  final IconData? icon;
  final String label;
  final double size;
  final bool isWithIcon;

  @override
  Widget build(BuildContext context) {
    if (label.isNotEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isWithIcon)
            Padding(
              padding: const EdgeInsets.only(top: 2, right: 8),
              child: Icon(
                icon,
                size: size,
              ),
            ),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: size,
                color: BrandColors.primaryLightTextColor,
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
