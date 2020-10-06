import 'package:evus/app/modules/welcome/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';

import '../../../resouces/dimen.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dimen.DP_20,
            ),
            Image.asset('assets/images/banner.jpg'),
            SizedBox(
              height: Dimen.DP_100,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create a new event'),
            ),
            TextButton(
              onPressed: () async {
                String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                    "#ff6666", "Cancel", false, ScanMode.DEFAULT);
                printInfo(info: barcodeScanRes);
              },
              child: Text('Scan invitation code'),
            ),
            Text(
              'or\nsign in to sync your information',
              textAlign: TextAlign.center,
            ),
            SignInButton(
              buttonType: ButtonType.google,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
