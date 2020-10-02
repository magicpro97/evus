import 'package:evus/app/modules/home/home_binding.dart';
import 'package:evus/app/modules/home/home_view.dart';
import 'package:evus/app/modules/login/login_binding.dart';
import 'package:evus/app/modules/login/login_view.dart';
import 'package:evus/app/modules/splash/splash_binding.dart';
import 'package:evus/app/modules/splash/splash_view.dart';
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
  ];
}
