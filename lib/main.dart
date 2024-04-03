import 'package:ecommerceappcodoet/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'data/repositories/authencationn/authencation_repository.dart';
import 'firebase_options.dart';
import 'navigation_menu.dart';

///Entry point ò Flutter App
Future<void> main() async {

  //Todo: Add Widgets Binding
  ///tạo liên kết cho các widgets. Để giữ màn hình mở đầu ( giật gân ) trước
  final  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //Todo: Init Local Storage
  ///thêm bộ nhớ cục  bộ,lấy bộ nhớ khi bộ nhớ lưu trữ dược khởi tạo
  await GetStorage.init();
  //Todo: Await Navtie Splash util other items load
  /// màn hình flash đợi cho đến khi xóa nó theo cách thủ công
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //Todo: Initialize Firebase

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then(
        (FirebaseApp value)=> Get.put(AuthencationRepository()),);///kho lưu trữ sẽ được khởi tạo đầu tiên khi bắt đầu
  //Todo: Initialize Authencation
  runApp(const App());
}



