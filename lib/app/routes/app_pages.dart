import 'package:evus/app/modules/home/home_binding.dart';
import 'package:evus/app/modules/home/home_view.dart';
import 'package:evus/app/modules/login/login_binding.dart';
import 'package:evus/app/modules/login/login_view.dart';
import 'package:evus/app/modules/scan/scan_binding.dart';
import 'package:evus/app/modules/scan/scan_view.dart';
import 'package:evus/app/modules/splash/splash_binding.dart';
import 'package:evus/app/modules/splash/splash_view.dart';
import 'package:evus/app/modules/welcome/welcome_binding.dart';
import 'package:evus/app/modules/welcome/welcome_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.SCAN,
      page: () => ScanView(),
      binding: ScanBinding(),
    ),
  ];
}