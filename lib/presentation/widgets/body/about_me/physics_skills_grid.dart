import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'skill_item.dart';

class PhysicsSkillsGrid extends StatelessWidget {
  const PhysicsSkillsGrid(
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
        return SkillsItem(
          service: skillsList == 0
              ? AppConstants.physicsSkillsRow0[index]
              : AppConstants.physicsSkillsRow1[index],
          useLightMode: useLightMode,
        );
      },
      itemCount: AppConstants.elecEngSkillsRow0.length,
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
