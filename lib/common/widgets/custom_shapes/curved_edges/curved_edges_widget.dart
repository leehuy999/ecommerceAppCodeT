import 'package:ecommerceappcodoet/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';
class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child,
  });

  //tạo 1 tham số
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}