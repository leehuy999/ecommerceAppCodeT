import 'package:ecommerceappcodoet/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerceappcodoet/common/widgets/login_signup/social_button.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/signup/widget/signup_form.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Title
              Text(TTexts.signupTitile, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Form
              TSignupForm(),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Driver
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwSections,),


              ///Social buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}



