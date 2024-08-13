import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'about_me_intro.dart';
import 'topics_grid.dart';
import 'skills_section.dart';
import 'about_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key, required this.useLightMode});

  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutMeIntro(useLightMode: useLightMode),
          const SizedBox(height: 8),
          Center(
            child: CustomDivider(
              color: useLightMode
                  ? AppColors.primaryColorLight
                  : AppColors.primaryColorDark,
              width: context.width / 4,
              height: 2,
            ),
          ),
          const SizedBox(height: 8),
          AboutInfo(useLightMode: useLightMode),
          const SizedBox(height: 58),
          TopicsGrid(
            aboutList: 1,
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 58),
          TopicsGrid(
            aboutList: 0,
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 80),
          ElecEngSkillsSection(
            label: 'Electrical Engineering Skills',
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 80),
          CompEngSkillsSection(
            label: 'Computer Engineering Skills',
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 80),
          PhysicsSkillsSection(
            label: 'Physics and Mathematics Skills',
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 80),
          CompSciSkillsSection(
            label: 'Computer Science Skills',
            useLightMode: useLightMode,
          ),
        ],
      ),
    );
  }
}
