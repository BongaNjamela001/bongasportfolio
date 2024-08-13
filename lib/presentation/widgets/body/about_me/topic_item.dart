import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_service.dart';

class TopicItem extends StatefulWidget {
  const TopicItem(
      {super.key, required this.service, required this.useLightMode});

  final ListItem service;
  final bool useLightMode;
  @override
  State<TopicItem> createState() => _TopicItemState();
}

class _TopicItemState extends State<TopicItem> {
  Color itemColor = AppColors.primaryColorDark;

  @override
  Widget build(BuildContext context) {
    // if (widget.useLightMode)
    return Container(
      padding: const EdgeInsets.all(10),
      color: itemColor,
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.logo,
              height: 48,
              colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
            const SizedBox(height: 16),
            if (context.width > DeviceType.mobile.getMinWidth())
              FittedBox(
                child: Text(
                  widget.service.service,
                  style: AppStyles.s24,
                  // minFontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.primaryColorDark);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.wisteria);
  }
}
