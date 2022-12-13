import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              const Text(
                "Neural Genie",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6b009c),
                ),
              ),
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
                  const Expanded(
                    child: Text(
                      'Do you find that your life is without direction and meaning, and that no matter how hard '
                      'you try, you can’t get what you want?',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Have you ever wondered why some people seem to be born lucky and attract good things to themselves?',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Imagine how it would feel if you discovered a magic lamp, rubbed it, and a Genie appeared to grant your wishes.  The good news is that the lamp is already in your hands!  The Genie in the '
                'lamp is your subconscious mind, the Genie’s body is the magical neural network of your brain.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'You are not aware of it, but the Genie works very hard for you, controlling almost all of your life .  You think it’s your conscious mind  that makes your decisions but what usually happens is that the Genie conjures up a lightning-fast decision, feeling or emotion.  Only much later - in terms of brain speed - does your conscious mind invent a “logical” reason why the Genie made that decision .'
                '  Your conscious mind even invents realities - which look totally real to you - to fit what the Genie has already come up with.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'You can’t talk directly to the Genie - nobody can.  It stays hidden in the lamp.  The only way to see what the Genie does is to look at what you have truly done in your life (not what you think you have done), or ask friends to honestly say what sort of person you are.'
                '  If parts of your life haven’t gone as you would like or you are struggling to make certain things work however hard you try, it’s probably because your Genie isn’t coded for those results.  This explains why you can read hundreds of self-help books, but not be better for it, because you aren’t really living what they preach - you need to convince your Genie.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Most of the Genie’s instructions were not programmed by you, they were programmed by other people, '
                'especially during your early years.  It’s likely that those people you know who were “born lucky” and attract things to themselves just happen to have Genies with the right coding.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
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
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " indirectly.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          // fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
              ),

              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                    text: "The Neural Genie approach",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            " teaches your Genie to believe through life experience",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " with almost no effort from you.",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),

              imageWidget("assets/images/complete.gif"),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Here are some benefits of controlling our Genie:\n\n"
                "We’re told that we will be happy if we are successful, but in "
                "fact it’s the other way around .  Happiness leads to success.  "
                "And happiness comes from within the mind.  If we can control "
                "our Genie.\n\nWe’re told that our genes determine what our "
                "bodies become, how we behave, and which diseases we are "
                "likely to succumb to - as if we are completely helpless and "
                "must accept what we have.  But genes aren’t the full story. "
                "The signals that our brain sends out can indirectly determine "
                "which parts of the genes switch on and off.  We know that "
                "stress can cause disease.We know that happiness fights disease. "
                "If we can control our Genie.",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "\nWe’re told that some people are naturally better at spotting"
                " opportunities, or at learning languages, or solving maths problems,"
                " but we can all do this if we can believe it .  If we can control our Genie.\n",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
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
              Text(
                "Even though the Genie won’t talk directly with you, there are ways to influence it. "
                " You could repeat things over and over, which is how you learn to drive a car without "
                "the need to think about it.  The Genie may listen to hypnosis sessions, if you are lucky."
                "  The Genie can also be fooled, if you spend a long time  pretending to be a certain way until"
                " the attitude sticks - the so-called \"fake it ‘til you make it\".",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
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
                child: const Text(
                  "All we need to do is convince the Genie that"
                  "our chosen method for life improvement will work.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              Text(
                "Rather than spending a huge amount of time and effort meditating and visualising all of the things that we would like to happen, "
                "over and over again, we simply accept that the Genie is running us.  So all we need to do is:",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),

              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: const Text(
                  "convince the Genie that"
                  " writing something down once in a special place"
                  "will make it happen.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
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
                children: const [
                  Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'The scientific reasons that have been presented here',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'A special place (The List in this app) for you to write down what you want and expect to happen',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '●	',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'A potent method to convince your Genie that this method works',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),

              const SizedBox(
                height: 5,
              ),
              Text(
                "The first part of this potent method was the unusually high price that you paid for this app.  Scientists have proven that expensive pills are more effective ,"
                " because our Genie thinks they are.  So your Genie already knows that this"
                " app will be more effective, and will finally start working for you to make the changes"
                " that you want in your life.\n",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "The second part of this potent method steals the process that has misdirected your Genie,"
                " but this time uses it for good.  Even though you can’t talk directly with your Genie, it does "
                "take notice of the world.  If it experiences something enough, the Genie thinks this is normal,"
                " and works towards it.  If you ask for something in a certain way and the thing always materialises,"
                " the Genie will learn that what you ask for will appear.\n",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "The third part of the potent method uses the same approach that has been used by Shaolin monks for "
                "centuries to perform their amazing feats of mental and physical prowess.  The monks face a simple"
                " task, which becomes increasingly difficult until it takes an almost supernatural skill to complete. "
                " You train your Genie in the same way.  To begin, you ask for things that you expect and know will "
                "happen easily.  The Genie learns that this works, then will accept increasingly challenging wishes.\n",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
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
              Text(
                "There are 49 blank spaces in The List.  (There is a good reason for limiting the number).\n\n"
                "Each space is for a “Divination” - something you expect and want to happen.  Only when one"
                " Divination has happened can you enter the next.\n\n"
                "Begin by writing a simple Divination - a thing that you know will happen.  For example “I will watch a leaf fall” in the autumn or “I will run 1 mile in "
                "6 minutes” when your average time for 1 mile is 6 minutes.  Remember… your Genie is watching. \n\n"
                "To write the Divination, click on this icon at the bottom of the screen:",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              imageWidget("assets/images/add.png"),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Once submitted, you cannot change the Divination, so be sure to write it how you want it to "
                "be (careful what you wish for...) and that it is truly what you want.  Don’t worry, the Genie knows "
                "what you really want, even if it’s difficult for you to write it clearly.  You do not need to do"
                " anything else in a special or particular way.  Writing the wish in The List  is all that is needed.\n\n "
                "Your Genie will now be primed to notice the Divination when it occurs, and will bring it to your attention. "
                " Mark it as complete by once again clicking on the icon to the left of the Divination:",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
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
                  text: const TextSpan(
                      text: "This is",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " reinforcement, ",
                          style: TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "  where the Genie learns that what you write in The List will happen.\n",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              Text(
                "The fulfilment of one Divination will unlock the next.  Begin with perhaps ten simple things,"
                " then continue to write increasingly ambitious Divinations that you expect and want to happen.  "
                "Allow the Genie to bring them to your attention as you go about your normal life, and mark them as"
                " complete when they occur.  There is no limit to how quickly or slowly you achieve your Divinations."
                "  You will know… you will feel the guidance of your Genie. \n\n "
                "That’s all there is to it.  The method works best if it is kept as simple as possible, with few rigid rules."
                "  There’s no need to work hard.  Your Genie has been working hard all your life, programmed by the"
                " world to produce results that you didn’t necessarily ask for.  It’s now time to let your Genie work "
                "hard doing things that you have asked for…",
                textAlign: TextAlign.justify,
                style: buildTextStyle(),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 20,
              ),

              elevatedButton(context),
              // getButton(
              //   "List",
              //       () {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const HomePage(),
              //       ),
              //     );
              //   },
              // ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
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
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
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
    return const TextStyle(fontSize: 25, color: Colors.white);
  }

// Widget getButton(String txt, Function onTap) {
//   return Center(
//     child: InkWell(
//       onTap: () async {
//         onTap();
//       },
//       child: Container(
//         height: 50.h,
//         width: 200.w,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Center(
//           child: Text(
//             txt,
//             style: TextStyle(
//               fontSize: 24.w,
//               fontWeight: FontWeight.w700,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
}
