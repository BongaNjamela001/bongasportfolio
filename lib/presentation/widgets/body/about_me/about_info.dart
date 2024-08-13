import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class AboutInfo extends StatefulWidget {
  const AboutInfo({super.key, required this.useLightMode});
  final bool useLightMode;

  @override
  State<AboutInfo> createState() => _AboutInfoState();
}

class _AboutInfoState extends State<AboutInfo> {
  TextStyle currentTextStyle16 = AppStyles.s16;
  TextStyle currentTextStyle18 = AppStyles.s18;
  TextStyle currentTextStyle24 = AppStyles.s24;
  TextStyle currentTextStyle32 = AppStyles.s32;

  @override
  Widget build(BuildContext context) {
    if (widget.useLightMode) {
      currentTextStyle16 = AppStylesLight.s16;
      currentTextStyle18 = AppStyles.s18;
      currentTextStyle24 = AppStyles.s24;
      currentTextStyle32 = AppStyles.s32;
    } else {
      currentTextStyle16 = AppStyles.s16;
      currentTextStyle18 = AppStyles.s18;
      currentTextStyle24 = AppStyles.s24;
      currentTextStyle32 = AppStyles.s32;
    }
    return Row(
      children: [
        Text(
          AppStrings.numOfExperience,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? AppStyles.s32.copyWith(fontSize: 48)
              : AppStyles.s32.copyWith(fontSize: 96),
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Text(
            AppStrings.experienceMsg,
            style: _getExpMsgStyle(context.width),
            softWrap: true,
          ),
        ),
      ],
    );
  }

  _getExpMsgStyle(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return AppStyles.s16.copyWith(
          fontWeight: FontWeight.w500, color: AppColors.primaryColorDark);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return AppStyles.s18.copyWith(color: AppColors.primaryColorDark);
    } else {
      return AppStyles.s24.copyWith(
          fontWeight: FontWeight.w500, color: AppColors.primaryColorDark);
    }
  }
}
