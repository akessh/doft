import 'package:get/get.dart';

class NavigationController extends GetxController{
  var index=0.obs;

  indexchange(int i){
    index.value=i;
  }
}