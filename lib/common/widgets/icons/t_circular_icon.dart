import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  /// A Custom Circular Icon widget with a background color
  ///
  /// Poperties are:
  /// Container [width],[height],[backgroundcolor]
  ///
  /// Iocn[icon],[size],[onPressed]
  const TCircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = TSize.lg,
      required this.icon,
      this.backgroundColor,
      this.color,
      this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunctions.isDarkMode(context)
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(
          onPressed: onPressed,
        icon: Icon(icon,color: color,size: size,),
      ),
    );
  }
}
