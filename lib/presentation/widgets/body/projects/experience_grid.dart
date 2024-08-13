import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/presentation/widgets/body/projects/experience_item.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';

class ExperienceGrid extends StatelessWidget {
  const ExperienceGrid(
      {super.key, required this.aboutList, required this.useLightMode});
  final bool useLightMode;
  final int aboutList;

  @override
  Widget build(BuildContext context) {
    Color itemColor = Colors.transparent;
    if (!useLightMode) {
      itemColor = AppColors.silver;
    } else {
      itemColor = AppColors.appBarColorBright;
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ExperienceItem(
              job: AppConstants.workExperienceList[index],
              useLightMode: useLightMode, itemColor: itemColor,
              // useLightMode: useLightMode,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        );
      },
      itemCount: AppConstants.workExperienceList.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfTopics = AppConstants.services.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 2;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfTopics > 4 ? 4 : numOfTopics;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMinWidth()) {
      return 1.1;
    } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
      return 1.4;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 1.5;
    } else {
      return 1.6;
    }
  }
}
