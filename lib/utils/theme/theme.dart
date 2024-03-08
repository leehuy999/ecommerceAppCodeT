import 'package:ecommerceappcodoet/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerceappcodoet/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

// tạo chủ đề dùng cho app
class TAppTheme {
  // dùng TApptheme 1 lần k cho lặp lại
  // xây dựng ở chế độ riêng tư
  TAppTheme._();

  // tạo các biến tĩnh dùng để gọi ra
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetThemeData.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetThemeData.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
  );
}