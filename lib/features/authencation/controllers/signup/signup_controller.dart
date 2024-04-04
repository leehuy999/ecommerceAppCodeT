import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();
  ///get find tìm phương thức được tạo trả về bộ điều khiển


///Variable
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();// khóa biểu mẫu để xác thưực biểu mẫu

///Sign Up
  Future<void> signup() async{
    // try{} on {}
  }
}