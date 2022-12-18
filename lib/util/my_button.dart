import 'package:flutter/material.dart';
import 'package:neural_genie/util/app_text_style.dart';

import 'ccolors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: CColors.themeColor,
      child: Text(text,
          style: AppTextStyle.nunito(style: const TextStyle(color: Colors.white))),
    );
  }
}
