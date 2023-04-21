import 'package:flutter/material.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/colors.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/utils.dart' as mutils;

class ShareBottomLink extends StatelessWidget {
  const ShareBottomLink(
      {super.key, required this.urlToShare, required this.label});

  final String urlToShare;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: GestureDetector(
        onTap: () => {mutils.launchURL(urlToShare)},
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
              label,
              style: TextStyle(
                color: BrandColors.onPrimaryColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
