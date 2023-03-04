import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginui/src/features/authentication/controllers/signup_controller.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (value) {
                  return null;
                },
                controller: controller.fullName,
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
                validator: (value) {
                  return null;
                },
                controller: controller.email,
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
                validator: (value) {
                  return null;
                },
                controller: controller.password,
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
                  onPressed: () {
                    if (_formKey.currentState != null) {
                      SignUpController.instance.registerUser(
                          controller.email.text.trim(),
                          controller.password.text.trim());
                    }
                  },
                  child: Text(tSignUp.toUpperCase()),
                ),
              )
            ],
          )),
    );
  }
}
