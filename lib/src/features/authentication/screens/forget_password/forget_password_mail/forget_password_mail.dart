import 'package:flutter/material.dart';
import 'package:loginui/src/common_widgets/forms/form_header_widget.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: const [
            SizedBox(
              height: tDefaultSize * 4,
            ),
            FormHeaderWidget(
                image: '',
                title: tForgetPassword,
                subTitle: tForgetPasswordSubTitle)
          ],
        ),
      ),
    );
  }
}
