
import 'package:doft_app/controllers/navigation_controller.dart';
import 'package:doft_app/view/cart/cart.dart';
import 'package:doft_app/view/home/home.dart';
import 'package:doft_app/view/profile/profile.dart';
import 'package:doft_app/view/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ScreenNavigation extends StatelessWidget {
   ScreenNavigation ({super.key});
 final NavigationController nc=Get.put(NavigationController());
 final List pages=[
    ScreenHome(),
  const  ScreenWishlist(),
  const  SCreenCart(),
    ScreenProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() => pages[nc.index.value],),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
          onTap:nc.indexchange,
          currentIndex: nc.index.value,
          type: BottomNavigationBarType.fixed,
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.backpack_sharp,),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined,),label: 'Profile'),
      
          ]
          ),
      ),
    );
  }
}