import 'package:doft_app/view/navigation/navigationscreen.dart';
import 'package:doft_app/view/splash_and_opening_screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(  MyApp());
  
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
 final FirebaseAuth auth =FirebaseAuth.instance;
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: auth.currentUser?.uid!=null? ScreenNavigation(): ScreenSplash(),
    );
  }
}

