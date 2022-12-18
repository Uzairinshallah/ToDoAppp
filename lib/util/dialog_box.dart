import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neural_genie/util/app_text_style.dart';

import '../dialogs/confirm_alert.dart';
import 'ccolors.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // get user input
          TextField(
            controller: controller,
            style: AppTextStyle.nunito(),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "Tell me your next Divination",
              hintStyle: AppTextStyle.nunito(),
            ),
          ),

          // buttons -> save + cancel
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // save button
              InkWell(
                // onTap: onSave,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return ConfirmDeviation(
                        onSave: onSave,
                        onCancel: () => Navigator.of(context).pop(),
                      );
                    },
                  );
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: CColors.themeColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Commit",
                      style: AppTextStyle.nunito(
                          style: TextStyle(
                        fontSize: 24.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              ),
              // MyButton(text: "Commit", onPressed: onSave),
              const SizedBox(width: 8),
              // cancel button
              InkWell(
                onTap: onCancel,
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: CColors.themeColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: AppTextStyle.nunito(
                        style: TextStyle(
                          fontSize: 24.w,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ],
      ),
    );
  }
}
