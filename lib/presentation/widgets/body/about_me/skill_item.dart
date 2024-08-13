import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_service.dart';

class SkillsItem extends StatefulWidget {
  const SkillsItem(
      {super.key, required this.service, required this.useLightMode});

  final ListItem service;
  final bool useLightMode;

  @override
  State<SkillsItem> createState() => _SkillsItemState();
}

class _SkillsItemState extends State<SkillsItem> {
  Color itemColor = AppColors.white;
  TextStyle textStyle17 = AppStyles.s17;
  TextStyle textStyle24 = AppStyles.s24;

  @override
  Widget build(BuildContext context) {
    if (widget.useLightMode) {
      itemColor = AppColors.black;
      textStyle17 = AppStylesLight.s17;
      textStyle24 = AppStylesLight.s24;
    } else {
      itemColor = AppColors.white;
      textStyle17 = AppStyles.s17;
      textStyle24 = AppStyles.s24;
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: itemColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.logo,
              // colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              height: context.width < DeviceType.mobile.getMinWidth() ? 40 : 56,
            ),
            const SizedBox(height: 16),
            FittedBox(
              child: Text(
                widget.service.service,
                style: textStyle24.copyWith(color: itemColor),
                textAlign: TextAlign.center,
              ),
            ),
            if (context.width > DeviceType.mobile.getMinWidth()) ...[
              const SizedBox(height: 16),
              Flexible(
                child: AutoSizeText(
                  widget.service.description,
                  style: textStyle17,
                  minFontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.white);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.primaryColorDark);
  }
}
