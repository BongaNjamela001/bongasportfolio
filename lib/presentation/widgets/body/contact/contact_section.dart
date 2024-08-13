import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/core/utils/app_extensions.dart';

import 'contact_intro.dart';
import 'contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.useLightMode});
  final bool useLightMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: context.width > DeviceType.ipad.getMaxWidth()
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContactIntro(
                    useLightMode: useLightMode,
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                    child: ContactForm(
                  useLightMode: useLightMode,
                )),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContactIntro(
                  useLightMode: useLightMode,
                ),
                const SizedBox(height: 32),
                ContactForm(
                  useLightMode: useLightMode,
                ),
              ],
            ),
    );
  }
}
