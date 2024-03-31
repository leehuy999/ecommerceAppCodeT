import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/brands/brand_cart.dart';
import 'package:ecommerceappcodoet/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/features/personalization/screens/brand/brand_product.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showSnackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all((TSize.defaultSpace)),
          child: Column(
            children: [

              ///Heading
              const TSectionHeading(title: 'Brand', showActionButon: false,),
              const SizedBox(height: TSize.spaceBtwItems,),

              ///Brand
              TGridLayout(itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) =>
                      TBrandCard(showBorder: true, onTap: () => Get.to(()=> const BrandProduct()),))
            ],
          ),
        ),
      ),
    );
  }
}
