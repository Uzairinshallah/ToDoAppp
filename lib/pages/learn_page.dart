import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:neural_genie/util/app_text_style.dart';

import '../data/database.dart';
import '../util/ccolors.dart';
import 'home_page.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  final _myBox = Hive.box('mybox');

  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Image.asset(
                "assets/images/complete.gif",
                width: 150,
                height: 100,
              ),
              Text(
                "Neural Genie",
                style: AppTextStyle.nunito(
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6b009c),
                  ),
                ),
              ),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: "Do you find that your life is without direction and "
                      "meaning, and that no matter how hard you try, you "
                      "can’t get what you want?\n\nHave you ever wondered "
                      "why some people seem to be born lucky and attract "
                      "good things to themselves?\n\n",
                  style: AppTextStyle.nunito(
                    style: boldAndItalicStyle(),
                  ),
                  children: [
                    TextSpan(
                      text: "Imagine how it would feel if you discovered "
                          "a magic lamp, rubbed it, and a Genie appeared, to grant"
                          " your wishes. The good news is that the lamp is already"
                          " in your hands. The Genie in the lamp is your subconscious"
                          " mind, the Genie’s body is the amazing neural network "
                          "of your brain.\n\nYou are not aware of it, but the "
                          "Genie works very hard for you, controlling almost "
                          "all of your life [1]. You think it’s your conscious "
                          "mind that makes your decisions but what usually "
                          "happens is that the Genie conjures up a lightning-fast decision, "
                          "feeling or action. Only much later - in terms of brain speed - "
                          "does your conscious mind invent a “logical” reason "
                          "why the Genie made that decision [2]. "
                          "Your conscious mind even invents realities - "
                          "which look totally real to you - to fit what the "
                          "Genie has already come up with.\n\nYou can’t talk "
                          "directly with the Genie - nobody can. It stays "
                          "hidden in the lamp. The few ways to see what the "
                          "Genie does include looking at what you have truly "
                          "done in your life (not what you think you have done), "
                          "or asking friends to honestly say what sort of person you are. "
                          "If parts of your life haven’t gone as you would like or you are "
                          "struggling to make certain things work however hard you try, "
                          "it’s probably because your Genie isn’t coded for those results. "
                          "This explains why you can read hundreds of self-help books, "
                          "but not be better for it, because you aren’t really living what they preach - "
                          "you need to convince your Genie.\n\nMost of the "
                          "Genie’s instructions were not programmed by you, "
                          "they were coded by other people, especially when "
                          "you were young. It’s likely that those people you "
                          "know who were “born lucky” and attract things to "
                          "themselves just happen to have Genies that were "
                          "influenced in the right way, and so developed the "
                          "right coding.\n\nNow is the time for you to fight "
                          "back, catch up, and take control of your Genie to "
                          "bring good things into your life. This is not just "
                          "wishful thinking, spirituality or magic, though "
                          "there is certainly “magic” in it. Neural Genie is "
                          "a powerful, simple technique based on the best "
                          "scientific evidence. It is not “manifestation”, "
                          "because manifestation requires that your Genie is "
                          "already trained to believe, which is rare. Nor is "
                          "the technique designed to influence things that "
                          "you can’t directly affect - but it is surprising "
                          "what you can affect ",
                      style: AppTextStyle.nunito(
                        style: normalStyle(),
                      ),
                    ),
                    TextSpan(text: "indirectly.\n\n", style: normalItalic()),
                    TextSpan(
                        text: "The Neural Genie approach teaches your Genie to "
                            "believe through life experience, with almost "
                            "no effort from you.",
                        style: normalStyle()),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                "assets/images/complete.gif",
                width: 100,
                height: 60,
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                            "We’re told that we will be happy if we are successful,"
                            " but in fact it’s the other way around [3]. Happiness"
                            " leads to success. And happiness comes from within "
                            "the mind.",
                        style: normalStyle()),
                    itItalic(),
                    TextSpan(
                      text: "we can control our Genie.\n\n",
                      style: normalStyle(),
                    ),
                    TextSpan(
                      text: "We’re told that our genes determine what our bodies"
                          " become, how we behave, and which diseases we are likely "
                          "to succumb to - as if we are completely helpless and "
                          "must accept what we have. But genes aren’t the full "
                          "story. The signals that our brain sends out can "
                          "indirectly determine which parts of the genes switch "
                          "on and off. We know that stress can cause disease. "
                          "We know that happiness fights disease.",
                      style: normalStyle(),
                    ),
                    itItalic(),
                    TextSpan(
                      text: "we can control our Genie.\n\n",
                      style: normalStyle(),
                    ),
                  ],
                  style: normalStyle(),
                  text: "Here are some benefits of controlling our Genie:\n\n",
                ),
              ),
              elevatedButton(context),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  TextSpan itItalic() => TextSpan(text: " If ", style: normalItalic());

  TextStyle boldAndItalicStyle() {
    return AppTextStyle.nunito(
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontStyle: FontStyle.italic),
    );
  }

  TextStyle normalStyle() {
    return AppTextStyle.nunito(
        style: const TextStyle(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      color: Colors.black,
    ));
  }

  TextStyle normalItalic() {
    return AppTextStyle.nunito(
        style: const TextStyle(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
      color: Colors.black,
    ));
  }

  Widget imageWidget(String imagePath) {
    return Center(
      child: Image.asset(
        imagePath,
        width: 80,
        height: 80,
      ),
    );
  }

  Widget elevatedButton(BuildContext context) {
    debugPrint(db.toDoList.length.toString());

    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: Container(
              width: 95,
              height: 35,
              decoration: BoxDecoration(
                color: CColors.themeColor,
              ),
              child: Center(
                child: Text(
                  "List",
                  style: buildTextStylee(),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        (db.toDoList.length <= 49)
            ? const SizedBox()
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "You Have Successfully Added \n Your 49 Divinations",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.nunito(
                      style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
                ),
              ),
      ],
    );
  }

  TextStyle buildTextStylee() {
    return AppTextStyle.nunito(
      style: const TextStyle(fontSize: 25, color: Colors.white),
    );
  }
}
