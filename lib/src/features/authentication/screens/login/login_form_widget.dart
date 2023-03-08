import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginui/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:loginui/src/firebaseAuth/firebase_auth_service.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
  });

  final _formkey = GlobalKey<FormState>();
  final FirebaseAuth_auth = FirebaseAuth.instance;

  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
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
                  //test
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing data')));
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
