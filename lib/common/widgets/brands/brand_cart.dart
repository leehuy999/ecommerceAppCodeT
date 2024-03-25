import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/t_rounded_container.dart';
import '../images/t_circular_image.dart';
import '../texts/t_brand_titile_text_with_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icon
            /// Flexible là tiện ích linh hoạt sẽ điều chỉnh không gian phù hợp
            Flexible(
              child: TCircularmage(
                isNetworkImage: false,
                image: TImages.clotheIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                isDark
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems / 2,
            ),

            ///Text
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                // tao kich thuoc truy cap xuong muc toi thieu
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 product',
                    // phần tràn văn bản là elip
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
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