import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../helpers/helper_functions.dart';
import '../loaders/animation_loader.dart';

///A utility class for managing a full-screen loading dialog
///Một lớp tiện ích để quản lý hộp thoại tải toàn màn hình
class TFullScreenLoader {
  ///open a full-screen loading with a given text and animation
  ///this method doesn't return anything
  ///
  /// Parameters:
  /// -text:The text to be displayed in the loading dialog
  /// - animation: the lottie animation to be show
  ///
   //mở tải toàn màn hình với một văn bản và hoạt ảnh nhất định
  //  phương thức này không trả về bất cứ thứ gì
  //
  //    Thông số:
  //   -text:Văn bản sẽ được hiển thị trong hộp thoại tải
  //  - animation: hoạt ảnh xổ số sẽ được hiển thị
  static void openLoadingDialog (String text, String animation){
    //hiển thị theo phương thức hộp thoại
    showDialog(context: Get.overlayContext!, // use the  Get.overlayContext for the dialogs
        barrierDismissible: false,// the dialog can't be dismissedby the tapping it /không thể loại bỏ hộp thoại bằng cách nhấn vào nó
        // không  cho người duùng tự ý hủy, khi cửa sổ bật nên  người dùng bấm quay lại sẽ không bijhuyr
        //  và không người dùng k nên chuyển màn hình trước hoặc có thể đóng ứng dụng
        builder: (_)=> PopScope(child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250,),//Adjust the spacing as neeeded
              TAnimationLoaderWidget(text: text,anitmation: animation,),
            ],
          ),
        ))
    );
  }
  ///Stop the currentlt Open loading dialog
  ///This method doesn't return anything
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();// close the dialog using Navigation
  }
}

