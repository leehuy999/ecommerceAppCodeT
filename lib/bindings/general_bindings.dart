import 'package:ecommerceappcodoet/utils/network/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

// tạo liên  kết mở rộng theemc các liên kết có phương thức phụ thuộc cần ghi đè
class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NetworkManager());
  }

}