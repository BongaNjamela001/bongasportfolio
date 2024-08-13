import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:mailer/mailer.dart';
// import 'package:mailer/smtp_server/gmail.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key, required this.useLightMode});

  final bool useLightMode;
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  late TextEditingController _nameController;
  late TextEditingController _subjectController;
  TextStyle style14 = AppStyles.s14;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
    _nameController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  void openDialog(BuildContext context, FormData formData) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'A FRIENDLY ALERT',
          style: style14,
        ),
        content: SelectableText(
            'I have currently disabled the mailing system. Please copy the message and email it to lungelobn@gmail.com. Thank you for your support:\n\n ${formData.subject} \n\n Dear Bonga, \n\n ${formData.message} \n\n My email address is: ${formData.email} \n\n Kind Regards, \n ${formData.username}',
            style: style14),
        actions: <Widget>[
          TextButton(
            child: const Text('Dismiss'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FilledButton(
            child: const Text('Okay'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    FormData formData =
        FormData(email: '', message: '', username: '', subject: '');
    String _emailErrorText;

    bool isEmailValid(String email) {
      // Basic email validation using regex
      // You can implement more complex validation if needed
      return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
    }

    if (widget.useLightMode) {
      style14 = AppStylesLight.s14;
    } else {
      style14 = AppStyles.s14;
    }

    void _validateEmail(String value) {
      if (value.isEmpty) {
        setState(() {
          _emailErrorText = 'Email is required';
        });
      } else if (!isEmailValid(value)) {
        setState(() {
          _emailErrorText = 'Enter a valid email address';
        });
      } else {
        setState(() {
          _emailErrorText = '';
        });
      }
    }

    Future<void> _sendEmail(
      BuildContext context,
      FormData formData,
    ) async {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'lungelobn@gmail.com',
        userInfo: formData.username,
        queryParameters: {'subject': formData.subject},
      );

      if (!await launchUrl(
        emailUri,
        mode: LaunchMode.externalApplication,
      )) {
        throw Exception('Could not launch $emailUri');
      }
      // String password = 'auvh nnus qfoe wszm';
      // final smtpServer = gmail('lungelobn@gmail.com', password);

      // final message = Message()
      //   ..from = Address(formData.email, formData.username)
      //   ..recipients.add('lungelobn@gmail.com')
      //   // ..ccRecipients.addAll(['abc@gmail.com', 'xyz@gmail.com']) // For Adding Multiple Recipients
      //   // ..bccRecipients.add(Address('a@gmail.com')) For Binding Carbon Copy of Sent Email
      //   ..subject = formData.subject
      //   ..text = formData.message;

      // try {
      //   // final SendReport sendReport;

      //   // if (_formKey.currentState!.validate()) {
      //   final sendReport = await send(message, smtpServer);
      //   // ScaffoldMessenger.of(context).showSnackBar(
      //   // const SnackBar(content: Text("Message sent successfully.")));
      //   // }
      // } on MailerException catch (e) {
      //   print('Message not sent');
      //   print(e.message);
      //   for (var p in e.problems) {
      //     print('Problem: ${p.code}: ${p.msg}');
      //   }
      // }
    }

    return SizedBox(
      width: _getFormWidth(context.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              textInputAction: TextInputAction.next,
              style: style14,
              decoration: InputDecoration(
                  labelText: 'Name',
                  fillColor: widget.useLightMode
                      ? AppColors.scaffoldColorBright
                      : AppColors.scaffoldColor),
              onChanged: (value) {
                formData.username = value;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              style: style14,
              decoration: InputDecoration(
                  labelText: 'E-mail',
                  fillColor: widget.useLightMode
                      ? AppColors.scaffoldColorBright
                      : AppColors.scaffoldColor),
              onChanged: (value) {
                formData.email = value;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _subjectController,
              style: style14,
              decoration: InputDecoration(
                  labelText: 'Subject',
                  fillColor: widget.useLightMode
                      ? AppColors.scaffoldColorBright
                      : AppColors.scaffoldColor),
              onChanged: (value) {
                formData.subject = value;
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _messageController,
              maxLines: 5,
              style: style14,
              decoration: InputDecoration(
                  labelText: 'Type a message here...',
                  fillColor: widget.useLightMode
                      ? AppColors.scaffoldColorBright
                      : AppColors.scaffoldColor),
              onChanged: (value) {
                formData.message = value;
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Submit',
              onPressed: () => openDialog(context, formData),
              backgroundColor: AppColors.primaryColorDark,
              width: _getFormWidth(context.width),
            ),
          ],
        ),
      ),
    );
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}

class FormData {
  String username;
  String email;
  String subject;
  String message;

  FormData({
    required this.email,
    required this.message,
    required this.username,
    required this.subject,
  });
}
