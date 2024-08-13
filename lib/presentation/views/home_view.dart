import 'package:flutter/material.dart';
import '../widgets/body/home_body.dart';
import '../widgets/app_bar/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.handleBrightnessChange,
    required this.useLightMode,
  });
  final void Function(bool useLightMode) handleBrightnessChange;
  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        handleBrightnessChange: handleBrightnessChange,
        useLightMode: useLightMode,
      ),
      body: HomeBody(
        handleBrightnessChange: handleBrightnessChange,
        useLightMode: useLightMode,
      ),
    );
  }
}
