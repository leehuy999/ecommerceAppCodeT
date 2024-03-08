import 'package:ecommerceappcodoet/features/authencation/controllers/onboarding_controller.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(child: ElevatedButton(
      onPressed: () => OnBoardingController.instance.nextPage(),
      style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark? TColors.primary : TColors.black),
      child: const Icon(Iconsax.arrow_right_3),
    ));
  }
}
