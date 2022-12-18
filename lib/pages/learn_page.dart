
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
              Text("Neural Genie",
                  style: AppTextStyle.nunito(
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6b009c),
                    ),
                  )),
              Markdown(
                shrinkWrap: true,
                controller: ScrollController(),
                selectable: true,
                data:
                    '''
* Do you find that your life is without direction and meaning, and that no matter how hard you try, you can’t get what you want?
* Have you ever wondered why some people seem to be born lucky and attract good things to themselves?

Imagine how it would feel if you discovered a magic lamp, rubbed it, and a Genie appeared, to grant your wishes.  The good news is that the lamp is already in your hands.  The Genie in the lamp is your subconscious mind, the Genie’s body is the amazing neural network of your brain.

You are not aware of it, but the Genie works very hard for you, controlling almost all of your life.  You think it’s your conscious mind  that makes your decisions but what usually happens is that the Genie conjures up a lightning-fast decision, feeling or action.  Only _much_ later - in terms of brain speed - does your conscious mind invent a “logical” reason why the Genie made that decision.  Your conscious mind even invents realities - which look <span style="text-decoration:underline;">totally</span> real to you - to fit what the Genie has already come up with.

You can’t talk directly with the Genie - nobody can.  It stays hidden in the lamp.  The few ways to see what the Genie does include looking at what you have truly done in your life (not what you _think_ you have done), or asking friends to honestly say what sort of person you are.  If parts of your life haven’t gone as you would like or you are struggling to make certain things work however hard you try, it’s probably because your Genie isn’t coded for those results.  This explains why you can read hundreds of self-help books, but not be better for it, because you aren’t really _living_ what they preach - you need to convince your Genie.

Most of the Genie’s instructions were not programmed by you, they were coded by other people, especially when you were young.  It’s likely that those people you know who were “born lucky” and attract things to themselves just happen to have Genies that were influenced in the right way, and so developed the right coding.

Now is the time for you to fight back, catch up, and take control of your Genie to bring good things into your life.  This is not just wishful thinking, spirituality or magic, though there is certainly “magic” in it.  Neural Genie is a powerful, simple technique based on the best scientific evidence.  It is not “manifestation”, because manifestation requires that your Genie is already trained to believe, which is rare.  Nor is the technique designed to influence things that you can’t directly affect - but it is surprising what you can affect _indirectly_.

The Neural Genie approach **teaches your Genie to believe through life experience**, with almost no effort from you.

![alt_text](resource:assets/images/complete.gif#300x80 "image_tooltip" )

Here are some benefits of controlling our Genie:

We’re told that we will be happy if we are successful, but in fact it’s the other way around. Happiness leads to success.  And happiness comes from within the mind.  _If_ we can control our Genie.

We’re told that our genes determine what our bodies become, how we behave, and which diseases we are likely to succumb to - as if we are completely helpless and must accept what we have.  But genes aren’t the full story.  The signals that our brain sends out can indirectly determine which parts of the genes switch on and off.  We know that stress can cause disease.  We know that happiness fights disease.  _If_ we can control our Genie.

We’re told that some people are naturally better at spotting opportunities, or at learning languages, or solving maths problems, but we can all do this if we can believe it[^4].  _If_ we can control our Genie.

People are trying to change all aspects of their lives - careers, health, relationships - using many different methods.  But if you can just influence the Genie, everything else will simply follow.



![alt_text](resource:assets/images/complete.gif#300x80 "image_tooltip" )

Even though the Genie won’t talk directly with you, there are ways to influence it.  You could repeat things over and over, which is how you learn to drive a car without the need to think about it.  The Genie may listen to hypnosis sessions, if you are lucky.  The Genie can also be fooled, if you spend a long time  pretending to be a certain way until the attitude sticks - the so-called "fake it ‘til you make it".

But you don’t need any of these techniques.  The Neural Genie method comes down to one incredibly simple principle:  

**_All we need to do is convince the Genie that_**

**_our chosen method for life improvement will work.  _**

Rather than spending a huge amount of time and effort meditating and visualising all of the things that we would like to happen, over and over again, we simply accept that the Genie is running us.  So all we need to do is:

**_convince the Genie that_**

**_writing something down once in a special place_**

**_will make it happen._**

These are the secrets of how Neural Genie works:



* The scientific reasons that have been presented here
* A special <span style="text-decoration:underline;">place</span> (The List in this app) for you to write down what you _want_ and _expect_ to happen
* A <span style="text-decoration:underline;">potent method</span> to convince your Genie that this method works

The first part of this <span style="text-decoration:underline;">potent method</span> was the unusually high price that you paid for this app.  Scientists have proven that expensive pills are more effective[^5], because our Genie thinks they are.  So your Genie already _knows_ that this app will be more effective, and will finally start working for you to make the changes that you want in your life.

The second part of this <span style="text-decoration:underline;">potent method</span> steals the process that has misdirected your Genie, but this time uses it for good.  Even though you can’t talk directly with your Genie, it does take notice of the world.  If it experiences something enough, the Genie thinks this is normal, and works towards it.  If you ask for something in a certain way and the thing always materialises, the Genie will learn that what you ask for will appear.

The third part of the <span style="text-decoration:underline;">potent method</span> uses the same approach that has been used by Shaolin monks for centuries to perform their amazing feats of mental and physical prowess.  The monks face a simple task, which becomes increasingly difficult until it takes an almost supernatural skill to complete.  You train your Genie in the same way.  To begin, you ask for things that you_ expect_ and _know_ will happen easily.  The Genie learns that this works, then will accept increasingly challenging wishes.

While this seems difficult, you can do it using a beautifully simple  process that requires very little effort.  So let us begin….



![alt_text](resource:assets/images/complete.gif#300x80 "image_tooltip" )


There are 49 blank spaces in The List.  (There is a good reason for limiting the number).

Each space is for a “Divination” - something you _expect_ and _want_ to happen.  Only when one Divination has happened can you enter the next.

Begin by writing a simple Divination - a thing that you _know_ will happen.  For example “I will watch a leaf fall” in the autumn or “I will run 1 mile in 6 minutes” when your average time for 1 mile _is_ 6 minutes.  Remember… your Genie is watching.  

To write the Divination, click on this icon at the bottom of the screen:


![alt_text](resource:assets/images/add.gif#300x80 "image_tooltip" )


Once submitted, you cannot change the Divination, so be sure to write it how you want it to be (careful what you wish for...) and that it is truly what you want.  Don’t worry, the Genie knows what you _really_ want, even if it’s difficult for you to write it clearly.  You do not need to do anything else in a special or particular way.  Writing the wish in The List  is all that is needed.

Your Genie will now be primed to notice the Divination when it occurs, and will bring it to your attention.  Mark it as complete by clicking the icon to the left of the Divination:

![alt_text](resource:assets/images/complete_text.gif#300x80 "image_tooltip" )


The icon will become illuminated:



<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.gif). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](resource:assets/images/complete.gif#300x80 "image_tooltip" )


This is _reinforcement_, where the Genie learns that what you write in The List _will_ happen.  

The fulfilment of one Divination will unlock the next.  Begin with perhaps ten simple things, then continue to write increasingly ambitious Divinations that you _expect_ and _want_ to happen.  Allow the Genie to bring them to your attention as you go about your normal life, and mark them as complete when they occur.  There is no limit to how quickly or slowly you achieve your Divinations.  You will know… you will feel the guidance of your Genie.

That’s all there is to it.  The method works best if it is kept as simple as possible, with few rigid rules.  There’s no need to work hard.  Your Genie has been working hard all your life, programmed by the world to produce results that you didn’t necessarily ask for.  It’s now time to let your Genie work hard doing things that you <span style="text-decoration:underline;">have</span> asked for…





<!-- Footnotes themselves at the bottom. -->
## Notes

[^1]:
     According to Nobel prize winner Daniel Kahneman, PhD

[^2]:
     Researchers at the Max Planck Institute for Human Cognitive and Brain Sciences in Leipzig, Charité University Hospital and the Bernstein Center for Computational Neuroscience in Berlin found that your brain makes up its mind up to ten seconds before you realise it.

[^3]:
     According to a study of _1,000,000 _people by top positive psychology researchers

[^4]:
     A Harvard study showed that people who pretended to be fighter pilots actually had improved
    vision because they were told that fighter pilots have excellent vision

[^5]:
      According to studies such as that carried out by the Gardner Center for Parkinson's Disease and Movement Disorders
''',
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
                child:  Text(
                  "You Have Successfully Added \n Your 49 Divinations",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.nunito(style: TextStyle(
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
