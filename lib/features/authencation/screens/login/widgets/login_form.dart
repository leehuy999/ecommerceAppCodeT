import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
          ),
          const SizedBox(height: TSize.spaceBtwInputFields,),

          ///Password
          TextFormField(decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: TTexts.password,
            suffixIcon: Icon(Iconsax.eye_slash),
          ),),
          const SizedBox(height: TSize.spaceBtwInputFields / 2,),

          ///Remember Me and forgot password
          Row(
            children: [
              ///Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              ///Forgot password
              TextButton(onPressed: (){}, child: const Text(TTexts.forgotPassword)),
            ],
          ),
          const SizedBox(height: TSize.spaceBtwSections,),

          /// Sign in Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.signIn),
            ),),
          const SizedBox(height: TSize.spaceBtwItems,),

          /// Create Account Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),),
          const SizedBox(height: TSize.spaceBtwSections,)
        ],
      ),
    )
    );
  }
}