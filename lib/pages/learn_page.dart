import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      'Do you find that your life is without direction and meaning, and that no matter how hard '
                      'you try, you can’t get what you want?',
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
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Now is the time for you to fight back, catch up, and take '
                'control of your Genie to bring good things into your life. '
                ' This is not just wishful thinking, spirituality or magic, '
                'though there is certainly “magic” in it.  Neural Genie is a'
                ' powerful, simple technique based on the best scientific '
                'evidence.  It is not “manifestation”, because manifestation'
                ' requires that your Genie is already trained to believe, '
                'which is rare. Nor is the technique designed to influence '
                'things that you can’t directly affect - but it is '
                'surprising what you can affect indirectly.\n\nThe Neural '
                'Genie approach teaches your Genie to believe through life '
                'experience, with almost no effort from you.',
                style: buildTextStyle(),
              ),
              imageWidget("assets/images/complete.gif"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5,
              ),
              Text("Here are some benefits of controlling our Genie:\n\n"
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
                  "If we can control our Genie."
                ,style: buildTextStyle(),),
              SizedBox(
                height: 20,
              ),

              getButton(
                "List",
                    () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageWidget( String imagePath ) {
    return Center(
      child: Image.asset(
        imagePath,
        width: 80,
        height: 80,
      ),
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
  }

  Widget getButton(String txt, Function onTap) {
    return Center(
      child: InkWell(
        onTap: () async {
          onTap();
        },
        child: Container(
          height: 50.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                fontSize: 24.w,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
