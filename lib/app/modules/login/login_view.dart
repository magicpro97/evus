import 'package:flutter/material.dart';
import 'package:evus/app/modules/login/login_controller.dart';
import 'package:evus/common/widgets/loading_view.dart';
import 'package:evus/generated/locales.g.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: LoadingView(
        isLoading: controller.isLoading,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => TextField(
                  decoration: InputDecoration(
                    hintText: LocaleKeys.txt_email.tr,
                    errorText: controller.email.value != ''
                        ? GetUtils.isEmail(controller.email.value)
                            ? null
                            : 'Invalid Email'
                        : null,
                  ),
                  onChanged: (value) => controller.email.value = value,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: LocaleKeys.txt_password.tr,
                ),
                obscureText: true,
                onChanged: (value) => controller.password.value = value,
              ),
              MaterialButton(
                onPressed: () => controller.login(),
                color: Colors.blue,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
