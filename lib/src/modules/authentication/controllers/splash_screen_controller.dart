
import 'package:get/get.dart';

class  SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  var animate = false.obs;


  Future startAnimation()async{
    await Future.delayed(const Duration(milliseconds: 1000));

      animate.value = true;

    //await Future.delayed(const Duration(milliseconds: 500));
    //Get.to(WelcomeScreen());
    //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen();));

  }
}