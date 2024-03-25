import 'package:ecommerceappcodoet/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerceappcodoet/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        // padding: const EdgeInsets.all(0),
        ///tạo xếp chồng
        child: Stack(
          children: [
            ///background custom shapes
            Positioned(top: -150,right: -250,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
            Positioned(top: 100,right: -300,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
            child,
          ],
        ),
      ),
    );
  }
}