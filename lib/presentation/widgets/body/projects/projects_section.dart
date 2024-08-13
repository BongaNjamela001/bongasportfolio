import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/projects/experience_grid.dart';
import 'package:portfolio/presentation/widgets/body/projects/experience_intro.dart';
import 'package:portfolio/presentation/widgets/body/projects/extra_grid.dart';
import 'package:portfolio/presentation/widgets/body/projects/extra_intro.dart';

import 'projects_grid.dart';
import 'projects_intro.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key, required this.useLightMode});
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectsIntro(
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 52),
          ProjectsGrid(
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 52),
          ExperienceIntro(useLightMode: useLightMode),
          const SizedBox(height: 52),
          ExperienceGrid(aboutList: 1, useLightMode: useLightMode),
          const SizedBox(height: 52),
          ExtraIntro(useLightMode: useLightMode),
          const SizedBox(
            height: 52,
          ),
          ExtraGrid(aboutList: 1, useLightMode: useLightMode)
        ],
      ),
    );
  }
}
