import 'package:flutter/material.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key, required this.useLightMode});
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: context.width < DeviceType.mobile.getMaxWidth()
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntroCircleImageBox(
                  useLightMode: useLightMode,
                ),
                const SizedBox(height: 50),
                IntroText(
                  useLightMode: useLightMode,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IntroText(
                  useLightMode: useLightMode,
                ),
                IntroCircleImageBox(
                  useLightMode: useLightMode,
                ),
              ],
            ),
    );
  }
}
