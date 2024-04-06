import 'package:ecommerceappcodoet/features/authencation/controllers/signup/signup_controller.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;// chỉ cần sử dụng bộ điềukhiển controller
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24 ,
            //vẽ lại bộ chọn chấp nhận điều khoản
            child: Obx(() => Checkbox(value: controller.privacyPolicy.value,
                onChanged: (value)=> controller.privacyPolicy.value = !controller.privacyPolicy.value))),
        const SizedBox(width: TSize.spaceBtwItems,),
        Text.rich(
            TextSpan(
                children:[
                  TextSpan(text: '${TTexts.iAgreeTo}',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.privacyPolicy}',style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary
                  )),
                  TextSpan(text: '${TTexts.and}',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.termsOfUser}',style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary
                  )),
                ]
            )
        )
      ],
    );
  }
}
