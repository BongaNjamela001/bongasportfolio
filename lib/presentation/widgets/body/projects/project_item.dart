import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/project.dart';
import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  ProjectItem({super.key, required this.project, required this.useLightMode});
  final Project project;
  final bool useLightMode;
  TextStyle currentStyle24 = AppStyles.s24;
  TextStyle currentStyle18 = AppStyles.s18;

  @override
  Widget build(BuildContext context) {
    if (useLightMode) {
      currentStyle24 = AppStylesLight.s24;
      currentStyle18 = AppStylesLight.s18;
    }
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: useLightMode ? AppColors.lavender : AppColors.primaryLight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(
            imageUrl: project.imageUrl,
            useLightMode: useLightMode,
          ),
          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              project.name,
              style: AppStyles.s24.copyWith(color: AppColors.primaryColorDark),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: AutoSizeText(
              project.description,
              style: currentStyle18,
              minFontSize: 12,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 8),
          // if (project.previewLink != null || project.githubRepoLink != null)
          ProjectActions(
            project: project,
            useLightMode: useLightMode,
          )
        ],
      ),
    );
  }
}
