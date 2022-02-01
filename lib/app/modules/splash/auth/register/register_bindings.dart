import 'dart:ffi';

import 'package:get/get.dart';
import 'package:vakinha_burguer/app/core/rest_client/rest_client.dart';
import 'package:vakinha_burguer/app/modules/splash/auth/register/register_controller.dart';
import 'package:vakinha_burguer/app/repositories/auth/auth_repository.dart';
import 'package:vakinha_burguer/app/repositories/auth/auth_repository_impl.dart';

class RegisterBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        restClient: Get.find(),
      ),
    );
    Get.lazyPut(
      () => RegisterController(authRepository: Get.find()),
    );
  }
}
