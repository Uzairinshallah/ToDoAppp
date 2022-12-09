import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Functions {
  static showSnackBar(BuildContext context, String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
