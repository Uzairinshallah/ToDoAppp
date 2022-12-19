import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neural_genie/util/app_text_style.dart';

import '../util/ccolors.dart';
import '../util/functions.dart';

class ConfirmAlert extends StatefulWidget {
  const ConfirmAlert({
    Key? key,
  }) : super(key: key);

  @override
  State<ConfirmAlert> createState() => _ConfirmAlertState();
}

class _ConfirmAlertState extends State<ConfirmAlert> {
  late double screenWidth, screenHeight;
  var text = TextEditingController();
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      titlePadding: const EdgeInsets.all(0),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Are you sure that this Divination has been fulfilled?",
              style: AppTextStyle.nunito(
                  style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              )),
            ),
            getHeight(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    Functions.showSnackBar(context, "List added Successfully");
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: CColors.themeColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Yes",
                            style: AppTextStyle.nunito(
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () async {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: CColors.themeColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "No",
                            style: AppTextStyle.nunito(
                                style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  getHeight(double h) {
    return SizedBox(
      height: h,
    );
  }
}
