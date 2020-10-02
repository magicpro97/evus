import 'package:flutter/material.dart';
import 'package:evus/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashView extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplashView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
