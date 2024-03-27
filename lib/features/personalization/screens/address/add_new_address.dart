import 'package:ecommerceappcodoet/common/widgets/appbar/appbar.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
class AddNewAddressSceen extends StatelessWidget {
  const AddNewAddressSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showSnackArrow: true,title: Text('Add New Address'),),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'User'),),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number'),),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Stress'),)),
                  const SizedBox(height: TSize.spaceBtwInputFields,),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code'),)),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City'),)),
                  const SizedBox(height: TSize.spaceBtwInputFields,),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State'),)),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputFields,),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country'),),
              SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){},child: Text('Save'),),)

            ],
          ),
        ),
      ),
    );
  }
}
