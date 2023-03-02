import 'package:flutter/material.dart';

import '../../../../../constants/text_string.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                TextSpan(
                  text: tLogin.toUpperCase(),
                  style: const TextStyle(color: Colors.red, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
