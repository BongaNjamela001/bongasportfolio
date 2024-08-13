import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage(
      {super.key, required this.imageUrl, required this.useLightMode});
  final String imageUrl;
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: Image.asset(
        imageUrl,
        width: double.infinity,
        fit: BoxFit.cover,
        // errorWidget: (context, url, error) {
        //   return Icon(
        //     Icons.error,
        //     color: Colors.red.shade200,
        //     size: 50,
        //   );
        // },
      ),
    );
  }
}
