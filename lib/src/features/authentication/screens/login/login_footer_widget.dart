import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {}, child: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(
                    text: tSignUp,
                    style: TextStyle(color: Colors.blue),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
