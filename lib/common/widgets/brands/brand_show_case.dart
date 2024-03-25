import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/t_rounded_container.dart';
import 'brand_cart.dart';


class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      boderColor: TColors.grey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      padding: const EdgeInsets.only(bottom: TSize.md),
      child: Column(
        children: [
          /// Brand with product  count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSize.spaceBtwItems,),
          /// Brand top 3 Product Images
          Row(
              children:
              ///sử dụng thuộc tính bản đồ để aánh xạ bất cứ thứ gì mong muốn
              /// trả về kiểu danh sách
              images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
  Widget brandTopProductImageWidget (String image, context) {
    return Expanded(child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.white,
      margin: const EdgeInsets.only(bottom: TSize.sm),
      padding: const EdgeInsets.only(bottom: TSize.md),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ));
  }
}
