import 'package:flutter/material.dart';
import 'package:loginui/src/constants/image_string.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';

import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*---section 1--- */
                LoginHeaderWiget(size: size),

                /*- end of section 1--*/
                /*--section 2*/
                const LoginForm(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("OR"),
                    const SizedBox(
                      height: tFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(tSignInWithGoogle)),
                    ),
                    const SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                            text: tDontHaveAnAccount,
                            style: Theme.of(context).textTheme.displayMedium,
                            children: const [
                              TextSpan(
                                text: tSignUp,
                                style: TextStyle(color: Colors.blue),
                              ),
                            ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
