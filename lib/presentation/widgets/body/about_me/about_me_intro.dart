import 'package:flutter/material.dart';

import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class AboutMeIntro extends StatelessWidget {
  const AboutMeIntro({super.key, required this.useLightMode});
  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    TextStyle currentStyle14 = AppStyles.s14;
    TextStyle currentStyle18 = AppStyles.s18;
    TextStyle currentStyle32 = AppStyles.s32;

    if (useLightMode) {
      currentStyle14 = AppStylesLight.s14;
      currentStyle18 = AppStylesLight.s18;
      currentStyle32 = AppStylesLight.s32;
    } else {
      currentStyle14 = AppStyles.s14;
      currentStyle18 = AppStyles.s18;
      currentStyle32 = AppStyles.s32;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppBarHeaders.aboutMe.getString(),
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.aboutMeMsg,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? currentStyle14
              : currentStyle18,
          softWrap: true,
        ),
      ],
    );
  }
}
