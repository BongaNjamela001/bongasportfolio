import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bongasportfolio.dart';

import '../../../core/utils/app_enums.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'custom_header_btn.dart';

class HorizontalHeaders extends StatelessWidget {
  const HorizontalHeaders({
    super.key,
    required this.handleBrightnessChange,
    required this.useLightMode,
  });

  final void Function(bool useLightMode) handleBrightnessChange;
  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Row(
          children: [
            ...horizontalMenuList(),
            BrightnessButton(
              handleBrightnessChange: handleBrightnessChange,
              useLightMode: useLightMode,
            )
          ],
        );
      },
    );
  }

  List<Widget> horizontalMenuList() {
    return List.generate(
      AppBarHeaders.values.length,
      (index) => CustomHeaderBtn(
        headerIndex: index,
        useLightMode: useLightMode,
      ),
    );
  }
}
