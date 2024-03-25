import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_circular_image.dart';
import 'package:ecommerceappcodoet/common/widgets/texts/section_heading.dart';
import 'package:ecommerceappcodoet/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showSnackArrow: true, title: Text('Profile'),),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularmage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: () {}, child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSize.spaceBtwItems / 2,),
              /// dấu gạch
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems),


              /// Heading Profile Info
              const TSectionHeading(title: 'Profile Infomation',showActionButon: false,),
              const SizedBox(height: TSize.spaceBtwItems,),

              TProfileMenu(title: 'Name',value: 'Codding with T',onPressed: (){},),
              TProfileMenu(title: 'Username',value: 'codding_with_t',onPressed: (){},),

              const SizedBox(height: TSize.spaceBtwItems ,),
              /// dấu gạch
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(title: 'Personal Infomation', showActionButon: false,),
              const SizedBox(height: TSize.spaceBtwItems),

              TProfileMenu(title: 'User ID',value: '1234',icon: Iconsax.copy,onPressed: (){},),
              TProfileMenu(title: 'Email',value: 'lee@gmail.com',onPressed: (){},),
              TProfileMenu(title: 'Phone Number',value: '09 666 999 69',onPressed: (){},),
              TProfileMenu(title: 'Gender',value: 'Male',onPressed: (){},),
              TProfileMenu(title: 'Date of Birth',value: '10 Oct,1999',onPressed: (){},),
              const Divider(),
              const SizedBox(height: TSize.spaceBtwItems),


              Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text('Close Account', style:TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
