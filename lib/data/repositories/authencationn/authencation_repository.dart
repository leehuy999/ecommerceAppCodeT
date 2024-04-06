import 'package:ecommerceappcodoet/features/authencation/screens/login/login.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthencationRepository extends GetxController{
  static AuthencationRepository get instance => Get.find();

  /// Variable
  final _auth = FirebaseAuth.instance;git
/// tạo biến lưu trữ
 final deviceStorage = GetStorage();

 ///Called from main.dart on app launch . gọi từ main
/// nhấn ctrl + o để gọi onready
@override
  void onReady() {
    // TODO: implement onReady
    FlutterNativeSplash.remove();// xóa màn hình đầu ( màn hình giật gân)
    screenRedirect(); // gọi màn hình chuyển hướng
  }

  ///Function to show Relevant   Screen
  screenRedirect() async {
  // chạy thử chế độ gỡ lỗi
    if(kDebugMode){
      print('================ GET STORAGE auth Repo==================');
      print(deviceStorage.read('IsFirstTime'));
    }
    /// nạp bộ nhớ cục bộ
    /// local storage
    deviceStorage.write('IsFirstTime', true); // cho lần đầu tiên đăng nhập
    deviceStorage.read('IsFirstTime') != true
    ? Get.offAll(()=> const LoginScreen()) // chuyển đến màn hình đăng nhập nếu k phải lần đầu đăng nhập
        : Get.offAll(()=> const OnBoardingScreen());
  }
}