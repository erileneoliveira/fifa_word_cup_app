import 'package:fifa_word_cup_app/app/core/ui/styles/button_style.dart';
import 'package:fifa_word_cup_app/app/core/ui/styles/text_style.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final ButtonStyle style;
  final TextStyle labelStyle;
  final String label;
  final double? width;
  final double? heigth;
  final VoidCallback? onPressed;
  final bool outline;

  const Button(
      {super.key,
      required this.style,
      required this.labelStyle,
      required this.label,
      this.width,
      this.heigth,
      this.onPressed,
      this.outline = false});
  Button.primary({
    super.key,
    required this.label,
    this.width,
    this.heigth,
    this.onPressed,
  })  : style = ButtonStyles.i.primaryButton,
        labelStyle = TextStyles.i.textSecondaryFontExtraBold,
        outline = false;

  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      label,
      style: labelStyle,
      overflow: TextOverflow.ellipsis,
    );
    return SizedBox(
      width: width,
      height: heigth,
      child: outline
          ? OutlinedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            )
          : ElevatedButton(
              onPressed: onPressed, style: style, child: labelText),
    );
  }
}
