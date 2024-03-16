import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerceappcodoet/features/shop/controllers/home_controller.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());//gọi hàm controller ra
    return Column(//tạo dấu chấm chạy theo hình ảnh hiện tại
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            //cập nhật trang hiện tại
            onPageChanged: (index, _ ) => controller.updatePageIndicator(index),
          ),
          items: banner.map((url) => TRoundedImage(imageUrl:url)).toList(),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        // dùng get x thay vẽ lại dấu chấm
        Center(
          child: Obx(
            () =>  Row(
              children: [
                // tạo vòng lặp hình ảnh
                for(int i = 0; i< banner.length; i++)
                   TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primary :TColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}