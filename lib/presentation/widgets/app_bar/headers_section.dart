import 'package:flutter/material.dart';

import '../../../core/utils/app_extensions.dart';
import 'custom_menu_btn.dart';
import 'horizontal_headers.dart';

class HeadersSection extends StatefulWidget {
  const HeadersSection(
      {super.key,
      required this.handleBrightnessChange,
      required this.useLightMode});
  final void Function(bool useLightMode) handleBrightnessChange;
  final bool useLightMode;

  @override
  State<HeadersSection> createState() => _HeadersSectionState();
}

class _HeadersSectionState extends State<HeadersSection> {
  @override
  Widget build(BuildContext context) {
    if (context.width > 768) {
      return HorizontalHeaders(
        handleBrightnessChange: widget.handleBrightnessChange,
        useLightMode: widget.useLightMode,
      );
    } else {
      return const CustomMenuBtn();
    }
  }
}
