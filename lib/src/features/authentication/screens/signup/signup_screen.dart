import 'package:flutter/material.dart';
import 'package:loginui/src/common_widgets/forms/form_header_widget.dart';
import 'package:loginui/src/constants/colors.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: "", title: tSignUpTitle, subTitle: tSignUpSubTitle),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: tFormHeight - 10),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(tFullName),
                          prefixIcon: Icon(Icons.person_outline_rounded),
                          border: OutlineInputBorder(),
                          iconColor: tSecondaryColor,
                          labelStyle: TextStyle(color: tSecondaryColor),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
