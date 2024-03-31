import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/brands/brand_cart.dart';
import 'package:ecommerceappcodoet/common/widgets/products/sortable/sortable_product.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Brand detail
              TBrandCard(showBorder: true),
              SizedBox(height: TSize.spaceBtwSections,),

              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
