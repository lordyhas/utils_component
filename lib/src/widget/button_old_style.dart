import 'package:flutter/material.dart';

/*

textColor: theme.colorScheme.primary,
      highlightedBorderColor: theme.colorScheme.primaryVariant,
      highlightColor: theme.colorScheme.primaryVariant.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      borderSide: BorderSide(
        color: theme.colorScheme.primary,
      ),
 */

@Deprecated("not usable")
class OutlineButton extends OutlinedButton {
  /*final Color? color;
  final Color? textColor;
  final Color? highlightedBorderColor;
  final Color? highlightColor;
  final OutlinedBorder? shape;
  final BorderSide? borderSide;*/
  OutlineButton({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    final Color? color,
    final Color? textColor,
    final Color? highlightedBorderColor,
    final Color? highlightColor,
    final OutlinedBorder? shape,
    final BorderSide? borderSide,
  }) : super(
      key: key,
      onPressed: onPressed,
      child: child,
      style: OutlinedButton.styleFrom(
        side: borderSide,
      )
  );

}
