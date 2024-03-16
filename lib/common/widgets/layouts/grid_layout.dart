import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';

///tạo hiển thị dạng lưới
class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // số sp tối đa hiển thị
      itemCount: itemCount,
      // thu nhỏ và co lại các thuộc tính trước
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      // cho phép cuộn
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // số mục sp trên dòng 2
        crossAxisCount: 2,
        // dãn dọc ,ngang
        crossAxisSpacing: TSize.gridViewSpacing,
        mainAxisSpacing: TSize.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
