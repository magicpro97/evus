import 'package:evus/app/modules/scan/scan_controller.dart';
import 'package:get/get.dart';

class ScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(
      () => ScanController(),
    );
  }
}
