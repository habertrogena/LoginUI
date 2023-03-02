import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  //TextField controller to get data from TextFields

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
}
