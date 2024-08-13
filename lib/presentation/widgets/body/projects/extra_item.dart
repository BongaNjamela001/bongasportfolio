import 'package:flutter/material.dart';
import 'package:portfolio/data/models/work_experience.dart';
import 'package:portfolio/presentation/widgets/body/projects/experience_image.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';

class ExtraItem extends StatefulWidget {
  const ExtraItem(
      {super.key,
      required this.activity,
      required this.useLightMode,
      required this.itemColor});

  final WorkExperience activity;
  final bool useLightMode;
  final Color itemColor;

  @override
  State<ExtraItem> createState() => _ExtraItemState();
}

class _ExtraItemState extends State<ExtraItem> {
  // Color itemColor = Colors.transparent;

  TextStyle style24 = AppStylesLight.s24;
  TextStyle style18 = AppStylesLight.s18;
  TextStyle style16 = AppStylesLight.s16;
  TextStyle style14 = AppStylesLight.s14;

  @override
  Widget build(BuildContext context) {
    // if (widget.useLightMode) {
    //   style24 = AppStylesLight.s24;
    //   // itemColor = AppColors.scaffoldColorBright;
    // } else {
    //   style24 = AppStyles.s24;
    //   // itemColor = AppColors.appBarColor;
    // }
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
            color:
                widget.useLightMode ? AppColors.black : AppColors.appBarColor,
            width: 2),
        color: widget.itemColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                ExperienceImage(path: widget.activity.institutionLogo),
              ],
            ),
          ),
          // const SizedBox(height: 16),
          if (context.width > DeviceType.mobile.getMinWidth())
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  FittedBox(
                    child: Text(
                      widget.activity.institution,
                      style: style24,
                      // minFontSize: 8,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: widget.useLightMode
                        ? AppColors.primaryColorDark
                        : AppColors.black,
                  ),
                  const SizedBox(height: 20),
                  FittedBox(
                    child: Text(
                      widget.activity.position,
                      style: style18,
                      // minFontSize: 8,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      widget.activity.numberOfYears,
                      style: style16,
                      // minFontSize: 8,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Text(
                      widget.activity.responsibilities,
                      style: style14.copyWith(overflow: TextOverflow.clip),
                      // minFontSize: 8,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          // FittedBox(
          //   child: Text(
          //     widget.job.institution,
          //     style: style24,
          //     // minFontSize: 8,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }
}
