import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class DeveloperNameBtn extends StatefulWidget {
  const DeveloperNameBtn(
      {super.key, required this.useLightMode, required this.portfolio});
  final bool useLightMode;
  final bool portfolio;
  @override
  State<DeveloperNameBtn> createState() => _DeveloperNameBtnState();
}

class _DeveloperNameBtnState extends State<DeveloperNameBtn> {
  @override
  Widget build(BuildContext context) {
    // final isBright = Theme.of(context).brightness == Brightness.light;

    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .4
              : context.width * .2,
          child: FittedBox(
            alignment: Alignment.topLeft,
            child: Text(
              widget.portfolio ? "Bonga's Portfolio" : AppStrings.developerName,
              style: widget.useLightMode ? AppStylesLight.s28 : AppStyles.s28,
            ),
          ),
        ),
      ),
    );
  }
}
