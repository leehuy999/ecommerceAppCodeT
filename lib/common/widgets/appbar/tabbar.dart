import 'package:ecommerceappcodoet/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  /// if  you want to add the back ground  color to tabs you have to wrap them in Material widgets
  /// To do that we need [PreferredSizeWidget] Widget and  that's why  created custom classs [PreferredSizeWidget]
  ///  thêm màu thì cần bọc material
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override

  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color:  dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        //cuộn
        isScrollable: true,
        //chỉ mục
        indicatorColor: TColors.primary,
        //màu k chọn
        unselectedLabelColor: TColors.darkerGrey,
        labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary,

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
