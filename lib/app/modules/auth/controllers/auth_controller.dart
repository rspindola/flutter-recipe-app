import 'package:get/get.dart';
import 'package:recipes/app/routes/app_pages.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController
  bool logado = true;

  final count = 0.obs;

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  _init() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offNamedUntil(Routes.LOGIN, (_) => false);
  }
}
