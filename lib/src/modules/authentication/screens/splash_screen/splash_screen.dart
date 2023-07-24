import 'package:firestore_auth/src/constants/messages.dart';
import 'package:firestore_auth/src/modules/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_constants.dart';


class SplashScreen extends StatelessWidget {

final splashController = Get.put(SplashScreenController());


@override
Widget build(BuildContext context) {
  splashController.startAnimation();
  return Scaffold(
    body: SafeArea(
      child: Stack(
        children: [
          Obx(() {
            return AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 50 : -80,
              left: splashController.animate.value ? 25 : -80,

              child: const Image(
                image: AssetImage(splashImage1),
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 150 : 0,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  children: [
                    Text(
                      AppName,
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge,
                    ),
                    Text(
                      AppTagLine,
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge,
                    )
                  ],
                ),
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              bottom: splashController.animate.value ? 120 : 0,
              left: 50,
              child: const Image(
                image: AssetImage(splashMain),
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashController.animate.value ? 30 : -10,
                right: splashController.animate.value ? 30 : -10,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ));
          }),
        ],
      ),
    ),
  );
}
}

