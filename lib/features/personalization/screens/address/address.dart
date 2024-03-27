import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerceappcodoet/features/personalization/screens/address/widget/single_address.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreem extends StatelessWidget {
  const UserAddressScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressSceen()),
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar: TAppBar(
        showSnackArrow: true,
        title: Text(
          'Address',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddresss: false),
              TSingleAddress(selectedAddresss: true),
            ],
          ),
        ),
      ),
    );
  }
}
