import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neural_genie/util/app_text_style.dart';

import '../util/ccolors.dart';

class ConfirmDeviation extends StatelessWidget {
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const ConfirmDeviation({
    super.key,
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

          Text(
            "Is this Divination truly what you want and expect?",
            style: AppTextStyle.nunito(
                style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
            )),
          ),
          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: onSave,
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: CColors.themeColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Yes",
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
                      "No",
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
              // MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ],
      ),
    );
  }
}
