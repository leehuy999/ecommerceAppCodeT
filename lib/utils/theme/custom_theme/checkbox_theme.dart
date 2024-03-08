import 'package:flutter/material.dart';

// light and dark checkbox text theme
class TCheckboxTheme {
  TCheckboxTheme._();// to avoid creating instances

//customizable light text theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((state) {
      if (state.contains(MaterialState.selected)) {
        return Colors.white;
      }
      else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      else {
        return Colors.transparent;
      }
    })
  );
  //customizable dark text theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateColor.resolveWith((state) {
        if (state.contains(MaterialState.selected)) {
          return Colors.white;
        }
        else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)) {
          return Colors.blue;
        }
        else {
          return Colors.transparent;
        }
      })
  );
}