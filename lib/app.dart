import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/general_bindings.dart';
import 'features/authencation/screens/onboarding/onboarding.dart';
import 'navigation_menu.dart';

// use this class to setup theme , initial Bindings, any aimation and much more using
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //đổi giao diện theo hệ thống
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),///gọi binding đầu khikhoiwr chạy
      home: OnBoardingScreen(),
      //const Scaffold(backgroundColor: TColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
}