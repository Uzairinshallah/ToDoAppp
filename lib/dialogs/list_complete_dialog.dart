import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neural_genie/util/app_text_style.dart';
import 'package:neural_genie/util/ccolors.dart';

class ListCompleteDialog extends StatelessWidget {
  const ListCompleteDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/complete.gif",
            width: 50,
            height: 50,
          ),
          Text(
            "Neural Genie",
            style: buildTitleTextStyle(),
          ),
        ],
      ),
      scrollable: true,
      content: Text(
        data(),
        textAlign: TextAlign.justify,
        style: AppTextStyle.nunito(),
      ),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: CColors.themeColor, elevation: 5),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "OK",
              style: AppTextStyle.nunito(style: const TextStyle()),
            ))
      ],
    );
  }

  TextStyle buildTitleTextStyle() {
    return GoogleFonts.nunito(
        textStyle: const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Color(0xff6b009c),
    ));
  }

  String data() {
    return "Congratulations on getting this far.  I knew you would. \n\n"
        "Now that your Genie is programmed to materialise things that you expect "
        "and want to happen for you, your life will be better for it.  You no "
        "longer need The List, but if you do need a List, the right thing will "
        "come to you.\n\n"
        "I would appreciate any feedback that you have, because whenever another "
        "life on Planet Earth becomes a little better, we all benefit from it.  "
        "With your help, Neural Genie will become a powerful force for good.\n\n"
        "neuralgenie@gmail.com";
  }
}
