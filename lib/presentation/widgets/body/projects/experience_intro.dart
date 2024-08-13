import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ExperienceIntro extends StatelessWidget {
  const ExperienceIntro({
    super.key,
    required this.useLightMode,
  });

  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    TextStyle currentStyle32 = AppStyles.s32;
    TextStyle currentStyle18 = AppStyles.s18;
    if (useLightMode) {
      currentStyle32 = AppStylesLight.s32;
      currentStyle18 = AppStylesLight.s18;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.workExperienceTitle,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.workExperienceIntro,
          style: currentStyle18,
          softWrap: true,
        ),
      ],
    );
  }
}
