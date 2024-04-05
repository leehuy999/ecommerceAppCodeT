import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/network/network_manager.dart';
import 'package:ecommerceappcodoet/utils/popups/full_screen_loader.dart';
import 'package:ecommerceappcodoet/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();
  ///get find tìm phương thức được tạo trả về bộ điều khiển


///Variable
  final hidePassword = true.obs; //observable for hiding/Showing password/thay đổi vẽ lại khi muốn xem mk
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();// khóa biểu mẫu để xác thưực biểu mẫu

///Sign Up
  Future<void> signup() async{
    try{
      ///Start loading
      TFullScreenLoader.openLoadingDialog('We are processing your information', TImages.docerAnimation);

      /// Check Internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!signupFormKey.currentState!.validate()){
        return; // bắt buộc phải điền vào form thông tin
      }

      ///Form validation
      if(!signupFormKey.currentState!.validate()) return;//// bắt buộc phải điền vào form thông tin

      /// Privacy Policy check
      ///Register in the Firebase Authencation & save user data in the Firebase
      ///Save authencation user data in the Firebase FIreStorage
      ///Show Success Message
      ///Move to Verify Email Screen
    }
    catch(e) {
      //Show some Genneric Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', messenge: e.toString());
    }
    finally {
      // remove  loader
    }
  }
}