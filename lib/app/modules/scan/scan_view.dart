import 'package:evus/app/modules/scan/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScanView extends GetView<ScanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ScanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
