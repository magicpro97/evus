import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:evus/app/app.dart';
import 'package:evus/common/config/api.dart';
import 'package:evus/data/repositories/token_repository.dart';
import 'package:evus/data/repositories/user_repository.dart';
import 'package:evus/data/sources/cache/cached_box.dart';
import 'package:evus/data/sources/remote/user_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _setUp();

  runApp(
    App(),
  );
}

Future<void> _setUp() async {
  await Get.putAsync(
    () async {
      await GetStorage.init();
      return GetStorage();
    },
    permanent: true,
  );

  Get.lazyPut<Dio>(
    () => Dio()..interceptors.add(PrettyDioLogger()),
    fenix: true,
  );

  Get.lazyPut<Logger>(
    () => Logger(),
    fenix: true,
  );

  Get.lazyPut(
    () => UserService(
      Get.find(),
      baseUrl: UserApi.baseUrl,
    ),
    fenix: true,
  );

  Get.lazyPut<CachedBox>(
    () => CachedBoxImpl(Get.find()),
    fenix: true,
  );

  Get.lazyPut<UserRepository>(
    () => UserRepositoryImpl(
      Get.find(),
      Get.find(),
    ),
    fenix: true,
  );

  Get.lazyPut<TokenRepository>(
    () => TokenRepositoryImpl(Get.find()),
    fenix: true,
  );
}
