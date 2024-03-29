import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/t_rounded_container.dart';
import 'package:ecommerceappcodoet/common/widgets/products/cart/cart_items.dart';
import 'package:ecommerceappcodoet/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:ecommerceappcodoet/features/shop/screens/checkouts/widget/billing_address_section.dart';
import 'package:ecommerceappcodoet/features/shop/screens/checkouts/widget/billing_amount_section.dart';
import 'package:ecommerceappcodoet/features/shop/screens/checkouts/widget/billing_payment_section.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/image_strings.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../common/widgets/success_screens/success_screen.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showSnackArrow: true,
          title: Text(
            'Order Reviews',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Items in  cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///Coupons TextField
              TCouponCode(),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///Billing section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSize.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    const SizedBox(
                      height: TSize.spaceBtwSections,
                    ),

                    ///Divider
                    Divider(),
                    const SizedBox(
                      height: TSize.spaceBtwSections,
                    ),

                    ///Payment methors
                    TBillingPaymentSection(),
                    const SizedBox(
                      height: TSize.spaceBtwSections,
                    ),

                    ///Address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
                image: TImages.surcessfulIcon,
                title: 'Payment Surcess',
                subtitle: 'Your item will be shipped soon!',
            onPressed: () => Get.offAll(()=> const NavigationMenu())
            ,),
          ),
          child: Text('Checkout \$ 256'),
        ),
      ),
    );
  }
}
