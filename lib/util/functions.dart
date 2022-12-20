import 'package:flutter/material.dart';
import 'package:neural_genie/util/app_text_style.dart';

class Functions {
  static showSnackBar(BuildContext context, String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(
        message,
        style: AppTextStyle.nunito(
            style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        )),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
