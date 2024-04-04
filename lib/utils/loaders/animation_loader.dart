import 'package:ecommerceappcodoet/utils/constants/colors.dart';
import 'package:ecommerceappcodoet/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// A widget for the displaying an animated loading indicator with optonal text action button
/// /// Một tiện ích để hiển thị chỉ báo tải hoạt hình với nút hành động văn bản tùy chọn
class TAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the TAnimationLoaderWidget.
  ///
  /// Parameters :
  /// -text: the text be displayed below the animation
  /// - animation: the path to the Lottie animation file.
  /// - showaction: Whether to show an action button below the text
  /// -actionText: the text to be displayed on the action button.
  /// -onActionPressed: Call back function to the excuted when the action button is pressed
  // Hàm tạo mặc định cho TAnimationLoaderWidget.
  //   ///
  //   /// Thông số :
  //   /// -text: văn bản được hiển thị bên dưới ảnh động
  //   /// - animation: đường dẫn tới file ảnh động Lottie.
  //   /// - showaction: Có hiển thị nút hành động bên dưới văn bản hay không
  //   /// -actionText: văn bản sẽ được hiển thị trên nút hành động.
  //   /// -onActionPressed: Gọi lại chức năng thực thi khi nhấn nút hành động
  const TAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.anitmation,
       this.showAction = false,
      this.actionText,
      this.onActionPressed});

  final String text;
  final String anitmation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(anitmation,
              width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(
            height: TSize.defaultSpace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSize.defaultSpace,
          ),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style:
                        OutlinedButton.styleFrom(backgroundColor: TColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: TColors.light),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
