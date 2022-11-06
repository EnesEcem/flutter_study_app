import 'package:get/get.dart';

class AuthController extends GetxController {
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  void initAuth() async {
    await Future.delayed(Duration(seconds: 2));
    navigateToIntroduction();
  }

  Future<void> navigateToIntroduction() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed("/introduction");
  }

  void navigateToHomeScreen() {
    Get.offAllNamed("/HomeScreen");
  }
}
