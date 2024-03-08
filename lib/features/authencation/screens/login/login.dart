import 'package:ecommerceappcodoet/common/styles/spacing_styles.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:ecommerceappcodoet/utils/constants/text_strings.dart';
import 'package:ecommerceappcodoet/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo,tile & sub titile
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height:  150,
                  image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
                  Text(TTexts.logginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  Text(TTexts.loginSubTitile,style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              ///Form
              Form(child: Column(
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
                  ///
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
