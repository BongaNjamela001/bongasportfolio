import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'skill_item.dart';

class CompEngSkillsGrid extends StatelessWidget {
  const CompEngSkillsGrid(
      {super.key, required this.skillsList, required this.useLightMode});
  final int skillsList;
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        switch (skillsList) {
          case 0:
            return SkillsItem(
              service: AppConstants.compEngSkillsRow0[index],
              useLightMode: useLightMode,
            );
          case 1:
            return SkillsItem(
              service: AppConstants.compEngSkillsRow1[index],
              useLightMode: useLightMode,
            );
          default:
            return SkillsItem(
              service: AppConstants.compEngSkillsRow1[index],
              useLightMode: useLightMode,
            );
        }
      },
      itemCount: AppConstants.compEngSkillsRow0.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.services.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 2;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }
}
