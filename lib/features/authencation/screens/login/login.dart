import 'package:ecommerceappcodoet/common/styles/spacing_styles.dart';
import 'package:ecommerceappcodoet/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerceappcodoet/common/widgets/login_signup/social_button.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/login/widgets/login_form.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/login/widgets/login_header.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo,tile & sub titile
              TLoginHeader(),
              ///Form
              TLoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}








