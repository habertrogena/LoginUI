import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
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
          ),
          const SizedBox(
            height: tFormHeight - 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(tEmail),
              prefixIcon: Icon(Icons.email_rounded),
              border: OutlineInputBorder(),
              iconColor: tSecondaryColor,
              labelStyle: TextStyle(color: tSecondaryColor),
            ),
          ),
          const SizedBox(
            height: tFormHeight - 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(tPassword),
              prefixIcon: Icon(Icons.fingerprint),
              border: OutlineInputBorder(),
              iconColor: tSecondaryColor,
              labelStyle: TextStyle(color: tSecondaryColor),
            ),
          ),
          const SizedBox(
            height: tFormHeight - 5,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(tSignUp.toUpperCase()),
            ),
          )
        ],
      )),
    );
  }
}
