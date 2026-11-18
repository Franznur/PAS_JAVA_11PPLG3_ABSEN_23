import 'package:flutter/material.dart';
import 'package:proyek_pas/Textfield/my_Textfield.dart';
import 'package:proyek_pas/controller/LoginController.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextfield(
              myHint: 'Username',
              txtController: controller.usernameController,
              radius: 8.0,
            ),
            const SizedBox(height: 16.0),
            MyTextfield(
              myHint: 'Password',
              txtController: controller.passwordController,
              radius: 8.0,
              isObscure: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}