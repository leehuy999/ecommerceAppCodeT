import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/common/widgets/images/t_circular_image.dart';
import 'package:ecommerceappcodoet/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:ecommerceappcodoet/features/personalization/screens/profile/profile.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primar_header_container.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Apbar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  ///User Profile card
                  TUserProfileTitle(onPressed: () => Get.to(() => const ProfileScreen()),),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  /// Account settings
                  TSectionHeading(
                    title: 'Account Settings',
                    showActionButon: false,
                  ),
                  SizedBox(
                    height: TSize.spaceBtwItems,
                  ),

                  TSettingMenuTitle(
                      icon: Iconsax.safe_home,
                      subTitle: 'My Addreses',
                      title: 'Set shopping delivery address'),
                  TSettingMenuTitle(
                      icon: Iconsax.shopping_cart,
                      subTitle: 'My Cart',
                      title: 'Add, remove products and move to checkout'),
                  TSettingMenuTitle(
                      icon: Iconsax.bag_tick,
                      subTitle: 'My Orders',
                      title: 'In-progress and Completed Orders'),
                  TSettingMenuTitle(
                      icon: Iconsax.bank,
                      subTitle: 'Bank Account',
                      title: 'Withdraw balance to registered bank account'),
                  TSettingMenuTitle(
                      icon: Iconsax.discount_shape,
                      subTitle: 'My Coupons',
                      title: 'List of all the discounted  coupons'),
                  TSettingMenuTitle(
                      icon: Iconsax.notification,
                      subTitle: 'Notifications',
                      title: 'Set any kind of notification message'),
                  TSettingMenuTitle(
                      icon: Iconsax.security_card,
                      subTitle: 'Account Privacy',
                      title: 'Manage data usage and connected accounts'),

                  /// App Settings
                  SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: 'App Settings',
                    showActionButon: false,
                  ),
                  SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                  TSettingMenuTitle(
                      icon: Iconsax.document_upload,
                      subTitle: 'Load Data',
                      title: 'Upload Data to your Cloud Firebase'),
                  TSettingMenuTitle(
                    icon: Iconsax.location,
                    subTitle: 'Geolocation',
                    title: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.security_user,
                    subTitle: 'Safe Mode',
                    title: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.image,
                    subTitle: 'HD Image Quality',
                    title: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSections * 2.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
