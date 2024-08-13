import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/data/models/responsive_size.dart';

class ExperienceImage extends StatelessWidget {
  const ExperienceImage({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .32, //was .55
      ipadSize: context.width * .22, //was .36
      smallScreenSize: context.width * .14, //was .26
    );

    return SizedBox(
      height: responsiveSize.getSize(),
      child: Image.asset(
        path,
        width: responsiveSize.getSize(),
        height: responsiveSize.getSize(),
      ),
    );
  }
}
