import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginui/src/features/authentication/controllers/login_controller.dart';
import 'package:loginui/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  // final FirebaseAuth_auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    // final _formKey = GlobalKey<FormState>();
    return Form(
      key: controller.loginFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.emailController,
              onSaved: (value) {
                controller.email = value!;
              },
              validator: (value) {
                return controller.validateEmail(value!);
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmailHint,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: controller.passwordController,
              onSaved: (value) {
                controller.password = value!;
              },
              validator: (value) {
                return controller.validatePassword(value!);
              },
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            // --FORGET PASSWORD BTN
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(
                  tForgetPassword,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),

            //--LOGIN BUTTON

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  // controller.checkLogin();

                  if (controller.loginFormKey.currentState!.validate()) {
                    //firebase logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                  //test
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(content: Text('Processing data')));
                },
                child: Text(
                  tLogin.toUpperCase(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
