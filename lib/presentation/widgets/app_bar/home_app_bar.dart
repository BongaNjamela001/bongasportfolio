import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import 'custom_menu_btn.dart';
import 'developer_name_btn.dart';
import 'horizontal_headers.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar(
      {super.key,
      required this.handleBrightnessChange,
      required this.useLightMode});
  final void Function(bool useLightMode) handleBrightnessChange;
  final bool useLightMode;

  @override
  Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    // final isBright = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: widget.useLightMode
          ? AppColors.appBarColorBright
          : AppColors.appBarColor,
      padding: EdgeInsets.symmetric(
        horizontal: _getHorizontalPadding(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DeveloperNameBtn(
            useLightMode: widget.useLightMode,
            portfolio: true,
          ),
          context.width > DeviceType.ipad.getMaxWidth()
              ? HorizontalHeaders(
                  handleBrightnessChange: widget.handleBrightnessChange,
                  useLightMode: widget.useLightMode,
                )
              : const CustomMenuBtn()
        ],
      ),
    );
  }

  double _getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.ipad.getMaxWidth()) {
      return context.width * .03;
    } else {
      return context.width * .042;
    }
  }
}
