import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/about_me/compsci_skills_grid.dart';
import 'package:portfolio/presentation/widgets/body/about_me/eleceng_skills_grid.dart';
import 'package:portfolio/presentation/widgets/body/about_me/physics_skills_grid.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

import 'compeng_skills_grid.dart';

class CompEngSkillsSection extends StatelessWidget {
  const CompEngSkillsSection(
      {super.key, required this.label, required this.useLightMode});
  final String label;
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            label,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        CompEngSkillsGrid(
          skillsList: 0,
          useLightMode: useLightMode,
        ),
        const SizedBox(height: 32),
        CompEngSkillsGrid(
          skillsList: 1,
          useLightMode: useLightMode,
        ),
      ],
    );
  }
}

class ElecEngSkillsSection extends StatelessWidget {
  const ElecEngSkillsSection(
      {super.key, required this.label, required this.useLightMode});
  final String label;
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            label,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        ElecEngSkillsGrid(
          skillsList: 0,
          useLightMode: useLightMode,
        ),
        const SizedBox(height: 32),
        ElecEngSkillsGrid(
          skillsList: 1,
          useLightMode: useLightMode,
        ),
      ],
    );
  }
}

class PhysicsSkillsSection extends StatelessWidget {
  const PhysicsSkillsSection(
      {super.key, required this.label, required this.useLightMode});
  final String label;
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            label,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        PhysicsSkillsGrid(
          skillsList: 0,
          useLightMode: useLightMode,
        ),
        const SizedBox(height: 32),
        PhysicsSkillsGrid(
          skillsList: 1,
          useLightMode: useLightMode,
        ),
      ],
    );
  }
}

class CompSciSkillsSection extends StatelessWidget {
  const CompSciSkillsSection(
      {super.key, required this.label, required this.useLightMode});
  final String label;
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            label,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        CompSciSkillsGrid(
          skillsList: 0,
          useLightMode: useLightMode,
        ),
        const SizedBox(height: 32),
        CompSciSkillsGrid(
          skillsList: 1,
          useLightMode: useLightMode,
        ),
      ],
    );
  }
}
