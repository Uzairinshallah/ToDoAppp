import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:neural_genie/util/app_text_style.dart';

import '../util/ccolors.dart';
import 'home_page.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

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
              Text("Neural Genie",
                  style: AppTextStyle.lex(
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6b009c),
                    ),
                  )),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Do you find that your life is without direction and meaning, and that no matter how hard '
                      'you try, you can’t get what you want?',
                      textAlign: TextAlign.justify,
                      style: buildTextStyle(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Have you ever wondered why some people seem to be born lucky and attract good things to themselves?',
                      textAlign: TextAlign.justify,
                      style: buildTextStyle(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Imagine how it would feel if you discovered a magic lamp, rubbed it, and a Genie appeared to grant your wishes.  The good news is that the lamp is already in your hands!  The Genie in the '
                'lamp is your subconscious mind, the Genie’s body is the magical neural network of your brain.',
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  text:
                      'You are not aware of it, but the Genie works very hard for you,'
                      ' controlling almost all of your life .  You think it’s your conscious ',
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "mind  that",
                      style: richLineTextStyle(),
                    ),
                    TextSpan(
                      text:
                          "  makes your decisions but what usually happens is that the Genie conjures up a lightning-fast decision,"
                          ' feeling or emotion.  Only much later - in terms of brain speed - does your conscious mind invent'
                          ' a “logical” reason why the Genie made that decision .Your conscious mind even invents realities - which look ',
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: "totally",
                      style: richLineTextStyle(),
                    ),
                    TextSpan(
                      text:
                          " real to you - to fit what he Genie has already come up with.",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  text:
                      " You can’t talk directly to the Genie - nobody can.  It stays hidden in the lamp.  The only way"
                      " to see what the Genie does is to look at what you have truly done in your ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(children: [
                      TextSpan(text: 'life', style: richTextStyle()),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(2, -4),
                          child: const Text(
                            '1',
                            textScaleFactor: 0.7,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                      )
                    ]),
                    TextSpan(
                      text: " (not what you  ",
                      style: richTextStyle(),
                    ),
                    TextSpan(
                      text: " think ",
                      style: itelicTextStyle(),
                    ),
                    TextSpan(
                      text:
                          "you have done), or asking friends to honestly say what sort of person you are.  If parts of your life haven’t gone as you would like or you are struggling to make certain things work however hard you try, it’s probably because your Genie isn’t coded for those results.  This explains why you can read hundreds of self-help books, but not be better for it, "
                          "because you aren’t really living what they preach - you need to convince your Genie",
                      style: richTextStyle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                  'Most of the Genie’s instructions were not programmed by you, they were programmed by other people, '
                  'especially during your early years.  It’s likely that those people you know who were “born lucky” and attract things to themselves just happen to have Genies with the right coding.',
                  textAlign: TextAlign.justify,
                  style: buildTextStyle()),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    text:
                        'Now is the time for you to fight back, catch up, and take '
                        'control of your Genie to bring good things into your life. '
                        ' This is not just wishful thinking, spirituality or magic, '
                        'though there is certainly “magic” in it.  Neural Genie is a'
                        ' powerful, simple technique based on the best scientific '
                        'evidence.  It is not “manifestation”, because manifestation'
                        ' requires that your Genie is already trained to believe, '
                        'which is rare. Nor is the technique designed to influence '
                        'things that you can’t directly affect - but it is '
                        'surprising what you can affect',
                    style: richTextStyle(),
                    children: <TextSpan>[
                      TextSpan(
                        text: " indirectly.",
                        style: AppTextStyle.lex(
                          style: itelicTextStyle(),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: "The Neural Genie approach",
                    style: richTextStyle(),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            " teaches your Genie to believe through life experience",
                        style: AppTextStyle.lex(
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: " with almost no effort from you.\n",
                        style: richTextStyle(),
                      ),
                    ]),
              ),
              imageWidget("assets/images/complete.gif"),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: "Here are some benefits of controlling our Genie:\n\n"
                      "We’re told that we will be happy if we are successful, but in "
                      "fact it’s the other way ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(children: [
                      TextSpan(text: 'around', style: richTextStyle()),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(2, -4),
                          child: const Text(
                            '3 ',
                            textScaleFactor: 0.7,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                      )
                    ]),
                    TextSpan(
                      text: ".  Happiness leads to success.  "
                          "And happiness comes from within the mind.",
                      style: richTextStyle(),
                    ),
                    TextSpan(
                      text: "If ",
                      style: itelicTextStyle(),
                    ),
                    TextSpan(
                      text: "we can control "
                          "our Genie.\n\nWe’re told that our genes determine what our "
                          "bodies become, how we behave, and which diseases we are "
                          "likely to succumb to - as if we are completely helpless and "
                          "must accept what we have.  But genes aren’t the full story. "
                          "The signals that our brain sends out can indirectly determine "
                          "which parts of the genes switch on and off.  We know that "
                          "stress can cause disease.We know that happiness fights disease. "
                          "If we can control our Genie.",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          '\nWe’re told that some people are naturally better at spotting'
                          " opportunities, or at learning languages, or solving maths problems,"
                          " but we can all do this if we can believe it ",
                      style: richTextStyle()),
                  WidgetSpan(
                    child: Transform.translate(
                      offset: const Offset(2, -4),
                      child: const Text(
                        '4',
                        //superscript is usually smaller in size
                        textScaleFactor: 0.7,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  TextSpan(
                      text: '  If we can control our Genie.',
                      style: richTextStyle()),
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "People are trying to change all aspects of their lives - careers, health, relationships "
                "- using many different methods.  But if you can just influence the Genie, everything else will"
                " simply follow.",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              imageWidget("assets/images/complete.gif"),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "Even though the Genie won’t talk directly with you, there are ways to influence it. "
                      " You could repeat things over and over, which is how you learn to drive a car without "
                      "the need to think about it.  The Genie may listen to hypnosis sessions, if you are lucky."
                      "  The Genie can also be fooled, if you spend a long ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "time  pretending",
                      style: richLineTextStyle(),
                    ),
                    TextSpan(
                      text: " to be a certain way until"
                          " the attitude sticks - the so-called \"fake it ‘til you make it\".",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "But you don’t need any of these techniques.  The Neural Genie method comes"
                " down to one incredibly simple principle:  ",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Text(
                  "All we need to do is convince the Genie that"
                  "our chosen method for life improvement will work.\n",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.lex(
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "Rather than spending a huge amount of time and effort meditating and visualising all of the things that we would like to happen, "
                      "over and over again, we simply accept that the Genie is running us.  ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "So",
                      style: richLineTextStyle(),
                    ),
                    TextSpan(
                      text: " all we need to do is:",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Text(
                  "\nConvince the Genie that"
                  " writing something down once in a special place"
                  "will make it happen.\n",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.lex(
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "These are the secrets of how Neural Genie works:",
                  textAlign: TextAlign.left,
                  style: buildTextStyle(),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'The scientific reasons that have been presented here',
                      textAlign: TextAlign.justify,
                      style: buildTextStyle(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "A special  ",
                        style: richTextStyle(),
                        children: <TextSpan>[
                          TextSpan(
                            text: "place",
                            style: richLineTextStyle(),
                          ),
                          TextSpan(
                            text:
                                "(The List in this app) for you to write down what you want and expect to happen",
                            style: AppTextStyle.lex(
                              style: richTextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "A  ",
                        style: richTextStyle(),
                        children: <TextSpan>[
                          TextSpan(
                            text: "potent method",
                            style: richLineTextStyle(),
                          ),
                          TextSpan(
                            text:
                                "to convince your Genie that this method works",
                            style: AppTextStyle.lex(
                              style: richTextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              RichText(
                text: TextSpan(
                  text: "The first part of this ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "potent method",
                      style: richLineTextStyle(),
                    ),
                    TextSpan(children: [
                      TextSpan(
                        text:
                            " was the unusually high price that you paid for this app.  "
                            "Scientists have proven that expensive pills are more effective",
                        style: AppTextStyle.lex(
                          style: richTextStyle(),
                        ),
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(2, -4),
                          child: const Text(
                            '5',
                            textScaleFactor: 0.7,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                      )
                    ]),
                    TextSpan(
                      text: " , because our Genie thinks they are.",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: " So",
                      style: AppTextStyle.lex(
                        style: richLineTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: " your Genie already ",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: "Knows",
                      style: AppTextStyle.lex(
                        style: itelicTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text:
                          " that this app will be more effective, and will finally start working for you to"
                          " make the changes that you want in your life.\n",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: "The second part of this  ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "potent method",
                      style: richLineTextStyle(),
                    ),
                    TextSpan(
                      text:
                          " steals the process that has misdirected your Genie, but this time uses it for good.  Even though you can’t talk directly with your Genie, it does take notice of the world.  If it experiences something enough, the Genie thinks this is normal, and works towards it.  If you ask for something in a certain way and the "
                          "thing always materialises, the Genie will learn that what you ask for will appear.",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: "The third part of the  ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "potent method",
                      style: itelicTextStyle(),
                    ),
                    TextSpan(
                      text:
                          " uses the same approach that has been used by Shaolin monks for centuries to perform their amazing feats of mental and physical prowess.  The monks face a simple task, which becomes increasingly difficult until it takes an almost supernatural skill to complete. "
                          " You train your Genie in the same way.  To begin, you ask for things that you ",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: " expect ",
                      style: AppTextStyle.lex(
                        style: itelicTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: " and ",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: "will ",
                      style: AppTextStyle.lex(
                        style: itelicTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text:
                          "will happen easily.  The Genie learns that this works, then will accept increasingly challenging wishes.",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "While this seems challenging, you can do it using a beautifully simple  "
                "process that requires very little effort.  So let us begin….",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 15,
              ),
              imageWidget("assets/images/complete.gif"),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: "There are  ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "49 ",
                      style: AppTextStyle.lex(
                          style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      )),
                    ),
                    TextSpan(
                      text:
                          "blank spaces in The List.  (There is a good reason for limiting the number).\n\n"
                          "Each space is for a “Divination” - something you expect and want to happen.  Only when one"
                          " Divination has happened can you enter the next.\n\n"
                          "Begin by writing a simple Divination - a thing that you know will happen.  For example “I will watch a leaf fall” in the autumn or “I will run 1 mile in "
                          "6 minutes” when your average time for 1 mile is 6 minutes.  Remember… your Genie is watching. \n\n"
                          "To write the Divination, click on this icon at the bottom of the screen:",
                      style: richTextStyle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              imageWidget("assets/images/add.png"),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "Once submitted, you cannot change the Divination, so be sure to write it how you want it to be "
                      "(careful what you wish for...) and that it is truly what you want.  Don’t worry, the Genie knows what you",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: " really ",
                      style: itelicTextStyle(),
                    ),
                    TextSpan(
                      text:
                          "want, even if it’s difficult for you to write it clearly.  You do not need to do anything else in a special "
                          "or particular way.  Writing the wish in The List  is all that is needed.\n\nYour Genie will now be primed to "
                          "notice the Divination when it occurs, and will bring it to your attention.  Mark it as complete by "
                          "clicking the icon to the left of the Divination:",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              imageWidget("assets/images/incomplete.gif"),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "The icon will become illuminated:",
                  textAlign: TextAlign.justify,
                  style: buildTextStyle(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              imageWidget("assets/images/complete.gif"),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: RichText(
                  text: TextSpan(
                      text: "This is",
                      style: AppTextStyle.lex(
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " reinforcement, ",
                          style: itelicTextStyle(),
                        ),
                        TextSpan(
                          text:
                              "  where the Genie learns that what you write in The List ",
                          style: AppTextStyle.lex(
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " will ",
                          style: AppTextStyle.lex(
                            style: itelicTextStyle(),
                          ),
                        ),
                        TextSpan(
                          text: "happen.\n",
                          style: richLineTextStyle(),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text:
                      "The fulfilment of one Divination will unlock the next.  Begin with perhaps ten simple things, then continue to write "
                      "increasingly ambitious Divinations that you ",
                  style: richTextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: "expect ",
                      style: itelicTextStyle(),
                    ),
                    TextSpan(
                      text: "and  ",
                      style: richTextStyle(),
                    ),
                    TextSpan(
                      text: "want  ",
                      style: itelicTextStyle(),
                    ),
                    TextSpan(
                      text:
                          "to happen.  Allow the Genie to bring them to your attention as you go about your normal life, and mark "
                          "them as complete when they occur.  There is no limit to how quickly or slowly you achieve your "
                          "Divinations.  You will know… you will feel the guidance of your Genie.That’s all there is to it.  "
                          "The method works best if it is kept as simple as possible, with few rigid rules.  There’s no need to "
                          "work hard.  Your Genie has been working hard all your life, programmed by the world to produce "
                          "results that you didn’t necessarily ask for.  It’s now time to let your Genie work hard doing things "
                          "that you",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: "have ",
                      style: AppTextStyle.lex(
                        style: richLineTextStyle(),
                      ),
                    ),
                    TextSpan(
                      text: "asked for…",
                      style: AppTextStyle.lex(
                        style: richTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              // RichText(
              //   text: TextSpan(children: [
              //     TextSpan(
              //         text: '9:30 - 2:30',
              //         style: TextStyle(color: Colors.black)),
              //     WidgetSpan(
              //       child: Transform.translate(
              //         offset: const Offset(4, -10),
              //         child: Text(
              //           '2',
              //           //superscript is usually smaller in size
              //           textScaleFactor: 0.9,
              //           style: TextStyle(color: Colors.black, fontSize: 8),
              //         ),
              //       ),
              //     )
              //   ]),
              // ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 20,
              ),
              elevatedButton(context),
              SizedBox(
                height: 50.h,
              ),

              Footer(
                child: RichText(
                  text: TextSpan(
                      text: "",
                      style: AppTextStyle.lex(
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(children: [
                          TextSpan(text: '', style: richTextStyle()),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -4),
                              child: const Text(
                                '1',
                                textScaleFactor: 0.7,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          )
                        ]),
                        TextSpan(
                          text:
                              " According to Nobel prize winner Daniel Kahneman, PhD\n",
                          style: richTextStyleFooter(),
                        ),
                        TextSpan(children: [
                          TextSpan(text: '', style: richTextStyle()),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -4),
                              child: const Text(
                                '2',
                                textScaleFactor: 0.7,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          )
                        ]),
                        TextSpan(
                          text:
                              " Researchers at the Max Planck Institute for Human Cognitive and Brain "
                              "Sciences in Leipzig, Charité University Hospital and the Bernstein Center for Computational "
                              "Neuroscience in Berlin found that your brain makes up its mind up to ten seconds before you realise it.\n",
                          style: richTextStyleFooter(),
                        ),
                        TextSpan(children: [
                          TextSpan(text: '', style: richTextStyle()),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -4),
                              child: const Text(
                                '3',
                                textScaleFactor: 0.7,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          )
                        ]),
                        TextSpan(
                          text:
                              " According to a study of 1,000,000 people by top positive psychology researchers\n",
                          style: richTextStyleFooter(),
                        ),
                        TextSpan(children: [
                          TextSpan(text: '', style: richTextStyle()),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -4),
                              child: const Text(
                                '4',
                                textScaleFactor: 0.7,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          )
                        ]),
                        TextSpan(
                          text:
                              " A Harvard study showed that people who pretended to be fighter pilots actually had "
                              "improvedvision because they were told that fighter pilots have excellent vision\n",
                          style: richTextStyleFooter(),
                        ),
                        TextSpan(children: [
                          TextSpan(text: '', style: richTextStyle()),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -4),
                              child: const Text(
                                '5',
                                textScaleFactor: 0.7,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          )
                        ]),
                        TextSpan(
                          text: " According to studies such as that carried"
                              " out by the Gardner Center for Parkinson's Disease and Movement Disorders\n",
                          style: richTextStyleFooter(),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextStyle itelicTextStyle() {
    return AppTextStyle.lex(
      style: const TextStyle(
        fontSize: 11,
        fontStyle: FontStyle.italic,
        // fontWeight: FontWeight.w700,
      ),
    );
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

  TextStyle buildTextStyle() {
    return AppTextStyle.lex(
        style: const TextStyle(
      color: Colors.black,
      fontSize: 11,
      fontWeight: FontWeight.w700,
    ));
  }

  TextStyle richTextStyle() {
    return AppTextStyle.lex(
        style: const TextStyle(
      color: Colors.black,
      fontSize: 9,
      fontWeight: FontWeight.w700,
    ));
  }

  TextStyle richTextStyleFooter() {
    return AppTextStyle.quickSand(
      style: TextStyle(
        color: Colors.black,
        fontSize: 10,
      ),
    );
  }

  TextStyle richLineTextStyle() {
    return AppTextStyle.lex(
      style: const TextStyle(
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: 10,
        // fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget elevatedButton(BuildContext context) {
    return Card(
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
    );
  }

  TextStyle buildTextStylee() {
    return AppTextStyle.lex(
      style: const TextStyle(fontSize: 25, color: Colors.white),
    );
  }
}
