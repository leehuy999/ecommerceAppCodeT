import 'package:ecommerceappcodoet/features/authencation/screens/login/login.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/onboarding/onboarding.dart';
import 'package:ecommerceappcodoet/utils/exceptions/format_exceptions.dart';
import 'package:ecommerceappcodoet/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';

class AuthencationRepository extends GetxController{
  static AuthencationRepository get instance => Get.find();

  /// Variable
  /// khởi tạo firebaseauthen
  final _auth = FirebaseAuth.instance;
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

  //-----------------Email password sign in ------------------------------------
 ///[EmailAuthencation] -sign in
 ///[EmailAuthencation] - Regisster
  Future<UserCredential> registerWithEmailAndPassword (String email, String password) async{
  try{
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FirebaseException catch (e){
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e){
    throw 'Something went wrong. Please try again';
  }
  }

///[EmailVertification] - mail veritifiaction
///[EmailAuthencation] - Forget Password

  //-----------------Federate indetity & social sign-in-------------------------
  ///[GoogleAuthencation]- Google
  ///[FacebookAuthencation]- Facebook
  //-----------------./end Federated indentity& scocial sign-in-----------------
  ///[LogoutUser]- Valid for any authencation
///[DeleteUser]- Remove user Auth and Firesotre Account
}