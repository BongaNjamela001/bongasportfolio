import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/contact/social_medial_icons.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key, required this.useLightMode});

  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    TextStyle style32 = AppStyles.s32;
    TextStyle style18 = AppStyles.s18;

    if (useLightMode) {
      style18 = AppStylesLight.s18;
      // style32 = AppStylesLight.s32;
    } else {
      style18 = AppStyles.s18;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.contactWithMe,
            style: style32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style: style18,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        const SocialMediaIcons(),
      ],
    );
  }
}
