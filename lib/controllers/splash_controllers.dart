import 'package:doft_app/view/splash_and_opening_screens/first_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    goto();
    super.onInit();
  }




   void goto()async{
  await Future.delayed(const Duration(seconds: 3));
   Get.off(()=>const ScreenFirst());
  }
}