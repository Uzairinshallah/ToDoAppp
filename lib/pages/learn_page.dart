import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:neural_genie/util/app_text_style.dart';
import 'package:styled_text/styled_text.dart';

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
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Neural Genie",
                style: buildTitleTextStyle(),
              ),
              SizedBox(
                height: 30.h,
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
                height: 10,
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
                      text:
                          "We’re told that our genes determine what our bodies"
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
                    TextSpan(
                      text: "We’re told that some people are naturally better "
                          "at spotting opportunities, or at learning languages, "
                          "or solving maths problems, but we can all do this if "
                          "we can believe it [4].",
                      style: normalStyle(),
                    ),
                    itItalic(),
                    TextSpan(
                      text: "we can control our Genie.\n\n",
                      style: normalStyle(),
                    ),
                    TextSpan(
                      text: "People are trying to change all aspects of their "
                          "lives - careers, health, relationships - using many "
                          "different methods. But if you can just influence the "
                          "Genie, everything else will simply follow.",
                      style: normalStyle(),
                    ),
                  ],
                  style: normalStyle(),
                  text: "Here are some benefits of controlling our Genie:\n\n",
                ),
              ),
              Image.asset(
                "assets/images/complete.gif",
                width: 100,
                height: 60,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Even though the Genie won’t talk directly with you, there "
                "are ways to influence it. You could repeat things over and "
                "over, which is how you learn to drive a car without the need "
                "to think about it. The Genie may listen to hypnosis sessions, "
                "if you are lucky. The Genie can also be fooled, if you spend"
                " a long time pretending to be a certain way until the attitude "
                "sticks - the so-called \"fake it ‘til you make it\".\n\nBut you "
                "don’t need any of these techniques. The Neural Genie method "
                "comes down to one incredibly simple principle:\n",
                style: normalStyle(),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "All we need to do is convince the Genie that"
                  " our chosen method for life improvement will work\n",
                  style: normalItalic(),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "Rather than spending a huge amount of time and effort "
                "meditating and visualising all of the things that we would "
                "like to happen, over and over again, we simply accept that "
                "the Genie is running us. So all we need to do is:\n",
                style: normalStyle(),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "convince the Genie that writing something down once in a "
                  "special place will make it happen\n",
                  style: normalItalic(),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "These are the secrets of how Neural Genie works:\n",
                  style: normalStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: normalStyle(),
                          textAlign: TextAlign.justify,
                        ),
                        Expanded(
                          child: Text(
                            "The scientific reasons that have been presented here",
                            style: normalStyle(),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: normalStyle(),
                        ),
                        Expanded(
                          child: buildStyledText("A special <bold>place</bold> "
                              "(The List in this app) for you to write down what you want and expect to happen"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: normalStyle(),
                        ),
                        Expanded(
                          child: buildStyledText("A <bold>potent method</bold> "
                              "to convince your Genie that this technique works\n"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              buildStyledText(
                  "The first part of this <bold>potent method</bold> was the "
                  "unusually high price that you paid for this app. Scientists "
                  "have proven that expensive pills are more effective [5], "
                  "because our Genie thinks they are. So your Genie already "
                  "knows that this app will be more effective, and will finally "
                  "start working for you to make the changes that you want in "
                  "your life.\n"),
              buildStyledText(
                  "The second part of this <bold>potent method</bold> steals the "
                  "process that has misdirected your Genie, but this time uses "
                  "it for good. Even though you can’t talk directly with your "
                  "Genie, it does take notice of the world. If it experiences "
                  "something enough, the Genie thinks this is normal, and works "
                  "towards it. If you ask for something in a certain way and the "
                  "thing always materialises, the Genie will learn that what you "
                  "ask for will appear.\n"),
              buildStyledText(
                  "The third part of the <bold>potent method</bold> "
                  "uses the same approach that has been used by Shaolin monks "
                  "for centuries to perform their amazing feats of mental and "
                  "physical prowess. The monks face a simple task, which becomes "
                  "increasingly difficult until it takes an almost supernatural "
                  "skill to complete. You train your Genie in the same way. "
                  "To begin, you ask for things that you expect and know will "
                  "happen easily. The Genie learns that this works, then will "
                  "accept increasingly challenging wishes.\n"),
              Text(
                "While this seems difficult, you can do it using a beautifully "
                "simple process that requires very little effort. So let us "
                "begin….",
                style: normalStyle(),
                textAlign: TextAlign.justify,
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
                height: 10,
              ),
              Text(
                "There are 49 blank spaces in The List. (There is a good reason "
                "for limiting the number).\n",
                textAlign: TextAlign.justify,
                style: normalStyle(),
              ),
              Text(
                "Each space is for a “Divination” - something you expect and "
                "want to happen. Only when one Divination has happened can "
                "you enter the next.\n",
                style: normalStyle(),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Begin by writing a simple Divination - a thing that you know "
                "will happen. For example “I will watch a leaf fall” in the "
                "autumn or “I will run 1 mile in 6 minutes” when your average "
                "time for 1 mile is 6 minutes. Remember… your Genie is watching.",
                style: normalStyle(),
                textAlign: TextAlign.justify,
              ),
              Text(
                "\nTo write the Divination, click on this icon at the bottom of the screen:",
                style: normalStyle(),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                "assets/images/add.gif",
                width: 100,
                height: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              buildStyledTextItalic(
                "Once submitted, you cannot change the Divination, so be sure to"
                " write it how you want it to be (careful what you wish for...) "
                "and that it is truly what you want. Don’t worry, the Genie "
                "knows what you <italic>really</italic> want, even if it’s difficult for you "
                "to write it clearly. You do not need to do anything else in "
                "a special or particular way. Writing the wish in The List "
                "is all that is needed.\n\nYour Genie will now be primed to "
                "notice the Divination when it occurs, and will bring it to "
                "your attention. Mark it as complete by clicking the icon "
                "next to the Divination:",
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                "assets/images/complete_text.gif",
                width: 100,
                height: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "The icon will become illuminated:",
                  style: normalStyle(),
                  textAlign: TextAlign.justify,
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
                height: 10,
              ),
              buildStyledTextItalic(
                  "This is <italic>reinforcement</italic>, where the Genie "
                  "learns that what you write in The List will happen.\n\n"),
              buildStyledTextItalic(
                  "The fulfilment of one Divination will unlock the next. "
                  "Begin with perhaps ten simple things, then continue to write "
                  "increasingly ambitious Divinations that you "
                  "<italic>expect</italic> and <italic>want</italic> to "
                  "happen. Allow the Genie to bring them to your attention as "
                  "you go about your normal life, and mark them as complete when "
                  "they occur. There is no limit to how quickly or slowly you achieve your "
                  "Divinations. You will know… you will feel the guidance of your Genie.\n\n"
                  "That’s all there is to it. The method works best if it is "
                  "kept as simple as possible, with few rigid rules. There’s "
                  "no need to work hard. Your Genie has been working hard all "
                  "your life, programmed by the world to produce results that "
                  "you didn’t necessarily ask for. It’s now time to let your "
                  "Genie work hard doing things that you have asked for…",
                  ),
              SizedBox(
                height: 15.h,
              ),
              elevatedButton(context),
              SizedBox(
                height: 10.h,
              ),
              buildStyledTextItalic(
                  "[1] According to Nobel prize winner Daniel Kahneman, PhD.\n"
                  "[2] Researchers at the Max Planck Institute for Human Cognitive"
                  " and Brain Sciences in Leipzig, Charité University Hospital "
                  "and the Bernstein Center for Computational Neuroscience "
                  "in Berlin found that your brain makes up its mind up to "
                  "ten seconds before you realise it.\n"
                  "[3] As found in a study of <italic>1,000,000</italic> people by top positive "
                  "psychology researchers.\n"
                  "[4] A Harvard study showed that people who pretended to be fighter"
                  "pilots actually had improved vision because they were told that"
                  "fighter pilots have excellent vision.\n"
                  "[5] According to studies such as the one carried out by the Gardner"
                  "Center for Parkinson's Disease and Movement Disorders."),
            ],
          ),
        ),
      ),
    );
  }

  StyledText buildStyledText(String text) {
    return StyledText(
      text: text,
      style: normalStyle(),
      textAlign: TextAlign.justify,
      tags: {
        'bold': StyledTextTag(style: boldStyle()),
      },
    );
  }

  StyledText buildStyledTextItalic(String text) {
    return StyledText(
      text: text,
      style: normalStyle(),
      textAlign: TextAlign.justify,
      tags: {
        'italic': StyledTextTag(style: normalItalic()),
      },
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

  TextStyle boldStyle() {
    return AppTextStyle.nunito(
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),
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

  TextStyle buildTitleTextStyle() {
    return GoogleFonts.nunito(
        textStyle: const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w500,
      color: Color(0xff6b009c),
    ));
  }
}
