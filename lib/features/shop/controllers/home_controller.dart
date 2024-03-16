import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  ///tạo chỉ mục cập nhật bằng getx thay đổi theo trang hiện tại
  final carousalCurrentIndex = 0.obs;

  void  updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}