import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'intro_actions.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key, required this.useLightMode});
  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    TextStyle currentStyle14 = AppStylesLight.s14;
    TextStyle currentStyle16 = AppStylesLight.s16;
    TextStyle currentStyle18 = AppStylesLight.s18;
    TextStyle currentStyle32 = AppStylesLight.s32;
    TextStyle currentStyle24 = AppStylesLight.s24;
    TextStyle currentStyle52 = AppStylesLight.s52;

    if (useLightMode) {
      currentStyle14 = AppStylesLight.s14;
      currentStyle16 = AppStylesLight.s16;
      currentStyle18 = AppStylesLight.s18;
      currentStyle32 = AppStylesLight.s32;
      currentStyle24 = AppStylesLight.s24;
      currentStyle52 = AppStylesLight.s52;
    } else {
      currentStyle14 = AppStyles.s14;
      currentStyle16 = AppStyles.s16;
      currentStyle18 = AppStyles.s18;
      currentStyle32 = AppStyles.s32;
      currentStyle24 = AppStyles.s24;
      currentStyle52 = AppStyles.s52;
    }
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.helloIM,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s16
              : AppStyles.s32,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 6),
        Text(
          AppStrings.developerName,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? currentStyle24
              : currentStyle52,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width - 20
              : context.width / 2.5,
          child: Text(
            AppStrings.introMsg,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? currentStyle14
                : currentStyle18,
            textAlign: _getTextAlign(context.width),
            softWrap: true,
          ),
        ),
        const SizedBox(height: 30),
        IntoActions(
          useLightMode: useLightMode,
        ),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}
