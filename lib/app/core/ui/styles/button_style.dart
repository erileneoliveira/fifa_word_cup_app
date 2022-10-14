import 'package:fifa_word_cup_app/app/core/ui/styles/colors_app.dart';
import 'package:fifa_word_cup_app/app/core/ui/styles/text_style.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self isntance
  ButtonStyles._();
  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));
  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorsApp.i.yellow),
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));
  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.i.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorsApp.i.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.i.textSecondaryFontExtraBold.copyWith(
        fontSize: 14,
      ));
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}
