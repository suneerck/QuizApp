import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz/get_data.dart';
import 'package:quiz/screens/home_screen/home_screen.dart';

//splash screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //for delay 3 sec
    Timer(const Duration(seconds: 3), () {
      Get.off(HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://m8w8u5d7.stackpathcdn.com/wp-content/uploads/2018/12/apple-logo_318-40184.jpg',
              height: 50.w,
              width: 50.w,
            ),
            SizedBox(
              height: 5.w,
            ),
            const Text('Logo'),
          ],
        ),
      ),
    );
  }
}
