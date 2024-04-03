import 'package:ecommerceappcodoet/features/authencation/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  // tạp trình duyệt điều khiển trang
  final pageController = PageController();
  // tình trạng chỉ mục trang hiện tại
  Rx<int> currentPageIndex = 0.obs; // obs là một tiện ích khác sẽ thay đổi thiết kế mà không sử dụng các tiện ích trạng thái
  // Rx là phương thức của GetX để xác định các biến có thể dẽ dàng thay đổi và trạng thái nào cũng có thể thay đổi

  // Update current Index when page scroll
  // cập nhật trang bằng trang hiện tại theo số nguyên trang
  void updatePageIndicator (index) => currentPageIndex.value = index;

  //Jump to the specific dot selected page
  // điều hướng dấu chấm
  void dotNavigationClick(index) {
    // trang hiện tại bằng tran g đang mở
    currentPageIndex.value = index;
    //chuyển chỉ mục sang trang hiện tại
    pageController.jumpTo(index);
  }

  // update current index & jump to next page
  void nextPage() {
    if(currentPageIndex.value ==2) {
      /// gọi biến cục bộ để nhận biết có phải lần đầu đăng nhập không
      final storage = GetStorage();

      // /// chế độ gỡ lỗi
      // if(kDebugMode){
      //   print('================ GET STORAGE next button==================');
      //   print(storage.read('IsFirstTime'));
      // }
      //
      //
      // storage.write('IsFirstTime', false);
      Get.off(LoginScreen());/// get off xóa mọi màn hình trước đó
    } else {
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;// trang đầu tiên = 0 , gọi trực tiếp trang cuối
    pageController.jumpTo(2);
  }
}