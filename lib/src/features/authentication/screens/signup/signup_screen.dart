import 'package:flutter/material.dart';
import 'package:loginui/src/common_widgets/forms/form_header_widget.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';
import 'package:loginui/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';

import 'widgets/signup_form_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: const [
                FormHeaderWidget(
                    image: "", title: tSignUpTitle, subTitle: tSignUpSubTitle),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
