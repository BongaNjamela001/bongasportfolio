import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bongasportfolio.dart';
import 'package:portfolio/core/utils/app_styles.dart';

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'custom_header_btn.dart';

class VerticalHeaders extends StatelessWidget {
  const VerticalHeaders(
      {super.key,
      required this.useLightMode,
      required this.handleBrightnessChange});
  final bool useLightMode;
  final void Function(bool useLightMode) handleBrightnessChange;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (context.width > DeviceType.ipad.getMaxWidth()) {
          return const SizedBox();
        }
        return SizedBox(
          width: context.width,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ...buildAppBarHeadersList(context),
            BrightnessButton(
              handleBrightnessChange: handleBrightnessChange,
              useLightMode: useLightMode,
            )
          ]),
        );
      },
    );
  }

  List<Widget> buildAppBarHeadersList(BuildContext context) {
    return List.generate(
      AppBarHeaders.values.length,
      (index) => SizedBox(
        width: context.width,
        child: CustomHeaderBtn(
          headerIndex: index,
          useLightMode: useLightMode,
        ),
      ),
    );
  }
}
