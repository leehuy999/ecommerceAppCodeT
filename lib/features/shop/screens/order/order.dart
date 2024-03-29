import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/features/shop/screens/order/widget/order_list.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: TAppBar(title: Text('My Oders',style: Theme.of(context).textTheme.headlineSmall,),showSnackArrow: true,
      ),

      body: const Padding(padding: EdgeInsets.all(TSize.defaultSpace),
      ///Orders
        child: TOrderListItems(),
      ),
    );
  }
}
