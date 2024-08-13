import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_colors.dart';

import 'config/theme_manager.dart';
import 'presentation/blocs/home_bloc/home_bloc.dart';
import 'presentation/views/home_view.dart';

class BongasPortfolio extends StatefulWidget {
  const BongasPortfolio({super.key});

  @override
  State<BongasPortfolio> createState() => _BongasPortfolioState();
}

class _BongasPortfolioState extends State<BongasPortfolio> {
  ThemeMode themeMode = ThemeMode.system;

  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return View.of(context).platformDispatcher.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: CustomTheme.lightTheme(),
      darkTheme: CustomTheme.darkTheme(),
      title: "Bonga's Portolio",
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: HomeView(
          handleBrightnessChange: handleBrightnessChange,
          useLightMode: useLightMode,
        ),
      ),
    );
  }
}

class BrightnessButton extends StatelessWidget {
  const BrightnessButton({
    super.key,
    required this.handleBrightnessChange,
    required this.useLightMode,
    this.showTooltipBelow = true,
  });

  final Function handleBrightnessChange;
  final bool showTooltipBelow;
  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    // final isBright = Theme.of(context).brightness == Brightness.light;
    return Tooltip(
      preferBelow: showTooltipBelow,
      message: 'Toggle brightness',
      child: IconButton(
        icon: useLightMode
            ? const Icon(Icons.dark_mode_outlined)
            : const Icon(Icons.light_mode_outlined),
        onPressed: () => handleBrightnessChange(!useLightMode),
        color: useLightMode ? AppColors.black : AppColors.scaffoldColorBright,
      ),
    );
  }
}
