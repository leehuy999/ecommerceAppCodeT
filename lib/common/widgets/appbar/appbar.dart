import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TAppBar({super.key, this.title, this.showSnackArrow = false, this.leadingIcon, this.action, this.leadingOnPressed,});

  final Widget? title;
  final bool showSnackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: TSize.md),// bo các bên
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showSnackArrow
        /// xuất hiện nút back và các chnust khác theo màn hình
        ? IconButton(onPressed: () => Get.back, icon: const Icon(Iconsax.arrow_left))
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)): null,
        title: title,
        actions: action,
    ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
