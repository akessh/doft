import 'package:get/get.dart';

class SwipeButtonController extends GetxController{
  bool isFinished=false;

 void   delayfun()async{
    await Future.delayed(const Duration(seconds: 2), () {
    isFinished=true;
                
    });
    update();

  }
}