import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

          Text("Is this divination truly what you want and expect?", style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),),
          SizedBox(height:20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // save button

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
                      style: TextStyle(
                        fontSize: 24.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
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
                      style: TextStyle(
                        fontSize: 24.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
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
