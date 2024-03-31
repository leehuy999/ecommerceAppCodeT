import 'package:ecommerceappcodoet/features/authencation/controllers/onboarding_controller.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/onboarding/widgets/on_boarding_navigation.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/onboarding/widgets/onboarding_pages.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/device/device_utility.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //dùng gget put to instance lấy được phiên bản đã tạo có thể gọi bất cứ chỗ nào
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            // đây là biến của bộ điều khiển hạ cấp
            // gán controller cho chế độ xem trang để biết trạng thái của trang đang ở trang nào đang hiển thị và có bn trang
            controller: controller.pageController,
            // sử dụng chỉ báo trang cập nhật của bộ điều khiển
            onPageChanged: controller.updatePageIndicator,
            children: const [
              //Harizatal Scrollable Pages
              OnBoardingPages(
                images: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPages(
                images: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPages(
                images: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),

              //Skips Button
              OnBoardingSkip(),

              //Dot Navigation SmoothPageIndicator
              // điều hướng dấu chấm mượt mà
              OnBoardingDotNavigation(),

              // Circular Button (nút vòng tròn next pages)
              OnBoardingNextButton()
            ],
          )
        ],
      ),
    );
  }
}







