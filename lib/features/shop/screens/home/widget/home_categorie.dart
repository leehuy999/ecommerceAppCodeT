import 'package:ecommerceappcodoet/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/features/shop/screens/sub_category/sub_categories.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){
            return TVerticalImageText(
              title: 'Shoes',
              image: TImages.shoeIcon,
              onTap: () => Get.to(()=> const SubCategoriesScreen())  ,
            );
          }),
    );
  }
}