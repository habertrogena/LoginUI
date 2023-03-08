import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  //method to validate the email and password
  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "provide a valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "password must be of six characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      // return;
      loginFormKey.currentState!.save();
    }
    // loginFormKey.currentState!.save();
  }
}
