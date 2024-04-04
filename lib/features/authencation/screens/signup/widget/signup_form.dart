import 'package:ecommerceappcodoet/features/authencation/controllers/signup/signup_controller.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/signup/verify_email.dart';
import 'package:ecommerceappcodoet/features/authencation/screens/signup/widget/terms_conditions_checkbox.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:ecommerceappcodoet/utils/validators/validation.dart';
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
    ///tạo phiên bản controller để có thể truy cập biểu  mẫu này
    final controller = Get.put(SignupController());
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child: Column(
      key: controller.signupFormKey,// thêm thuộc tính khóa giống như các trường biểu mẫu văn bản
      children: [
        Row(
          children: [
            Expanded(child: TextFormField(
              controller: controller.firstName,
              validator: (value) => TValidator.validateEmptyText('First Name', value),
              expands: false,
              decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user),),
            )),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            Expanded(child: TextFormField(
              controller: controller.lastName,
              validator: (value) => TValidator.validateEmptyText('Last Name', value),
              expands: false,
              decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user),),
            )),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///Username
            TextFormField(
              controller: controller.userName,
              validator: (value) => TValidator.validateEmptyText('User Name', value),
              expands: false,
              decoration: const InputDecoration(
                labelText:  TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///Email
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                labelText:  TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhonenumber(value),
              expands: false,
              decoration: const InputDecoration(
                labelText:  TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwInputFields,),
            ///Password
            TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
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
              onPressed: () =>  controller.signup,
              child: const Text(TTexts.createAccount),
            ),
            )
          ],
        )
      ],
    ));
  }
}