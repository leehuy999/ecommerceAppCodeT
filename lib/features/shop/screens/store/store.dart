import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_circular_image.dart';
import 'package:ecommerceappcodoet/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCounterIcon( onPressed: () {}, iconColor: TColors.white,),
        ],
      ),
      /// chế độ cuộn lồng nhau
      body: NestedScrollView( headerSliverBuilder: (_, innerBoxIsScrolled){
        return [SliverAppBar(
          /// tắt mũi tên quay lại
          automaticallyImplyLeading: false,
          ///gim thanh ứng dụng
          pinned: true,
          /// cho biết người duùng cuộn về hướng nào
          floating: true,
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
          expandedHeight: 440,
          flexibleSpace: Padding(
            padding: EdgeInsets.all(TSize.defaultSpace),
            /// vì chiều cao k giới hạn nên dùng cột sẽ lỗi phải dùng view dạng danh sách
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ///Search bar
                SizedBox(height: TSize.spaceBtwItems,),
                TSearchContainer(text: "Search in Store",showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                const SizedBox(height: TSize.spaceBtwSections),

                ///Featured Brands
                TSectionHeading(title: 'Featured Brands', onPressed: () {},),
                const SizedBox(height: TSize.spaceBtwItems / 1.5),
                TRoundedContainer(
                  padding: const EdgeInsets.all(TSize.sm),
                  showBorder: true,
                  backgroundColor: Colors.transparent,
                  child: Row(
                    children: [
                      ///Icon
                      TCirculmage(image: '',)
                    ],
                  ),
                )

              ],
            ),
          ),
        )
        ];
      }, body: Container(),),
    );
  }
}


