import 'package:ecommerceappcodoet/features/authencation/screens/signup/verify_email.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/signup/widget/terms_conditions_checkbox.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(child: TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user),),
            )),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            Expanded(child: TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user),),
            )),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText:  TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText:  TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///phone number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText:  TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwSections,),

            ///Terms and Conditions CheckkBox
            TermsAndConditionCheckbox(),

            ///Sign up button
            SizedBox(width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>  Get.to(() => const Verificationemail()),
              child: const Text(TTexts.createAccount),
            ),
            )
          ],
        )
      ],
    ));
  }
}