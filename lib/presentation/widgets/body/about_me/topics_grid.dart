import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'topic_item.dart';

class TopicsGrid extends StatelessWidget {
  const TopicsGrid(
      {super.key, required this.aboutList, required this.useLightMode});
  final bool useLightMode;
  final int aboutList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        childAspectRatio: _getAspectRatio(context.width),
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return TopicItem(
          service: aboutList == 1
              ? AppConstants.services[index]
              : AppConstants.courses[index],
          useLightMode: useLightMode,
          // useLightMode: useLightMode,
        );
      },
      itemCount: AppConstants.services.length,
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
