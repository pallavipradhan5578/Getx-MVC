import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  void loginApi() async {
    print('Welcome');
    try {
      final response = await post(Uri.parse('https://reqres.in/api/register'),
          body: {
            "email": emailController.value.text,
            "password": passwordController.value.text
          });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);


      if (response.statusCode == 200) {
        Get.snackbar('Login Successful', 'success');
      } else {
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  } //email": "eve.holt@reqres.in",
//"password": "pistol"
}
