import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      action: [
        ///action  tạo giỏ hàng và số lượng giỏ hàng bằng stack xếp chồng
        TCounterIcon(onPressed: () { }, iconColor: TColors.white,counterBgColor: TColors.black,)
      ],
    );
  }
}