import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_textstyle.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextStyle? style;
  const LabelButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: style ?? AppTextStyle.buttonHeading,
      ),
    );
  }
}
