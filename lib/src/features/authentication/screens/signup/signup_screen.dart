import 'package:flutter/material.dart';
import 'package:loginui/src/common_widgets/forms/form_header_widget.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';

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
              children: [
                const FormHeaderWidget(
                    image: "", title: tSignUpTitle, subTitle: tSignUpSubTitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.account_balance_wallet_sharp),
                        label: const Text(tSignInWithGoogle),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            TextSpan(
                              text: tLogin.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
