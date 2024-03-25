import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// Main large image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSize.productImageRadius * 2),
                child: Center(
                  child:
                  Image(image: AssetImage(TImages.productImage1)),
                ),
              ),
            ),

            /// Image Slider
            /// tạo dạng danh sách kéo sang
            Positioned(
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSize.spaceBtwItems,
                  ),

                  /// tạo dải phân cách giữa các ảnh

                  scrollDirection: Axis.horizontal,

                  /// cuộn ngang
                  physics: const AlwaysScrollableScrollPhysics(),

                  /// cho cuộn
                  itemBuilder: (_, index) => TRoundedImage(
                    imageUrl: TImages.productImage3,
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSize.sm),
                  ),
                ),
              ),),

            /// Appbar Icons
            const TAppBar(
              showSnackArrow: true,
              action: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
            )
          ],
        ),
      ),
    );
  }
}
