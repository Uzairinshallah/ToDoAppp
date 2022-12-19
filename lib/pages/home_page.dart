import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neural_genie/pages/red_page.dart';
import 'package:neural_genie/util/app_text_style.dart';
import '../data/database.dart';
import '../dialogs/list_complete_dialog.dart';
import '../util/ccolors.dart';
import '../util/dialog_box.dart';
import '../util/functions.dart';
import '../util/todo_tile.dart';
import 'learn_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();
  final player = AudioPlayer();

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) async {
    if (db.toDoList[index][1] == false) {
      debugPrint("length 2 : ${db.toDoList.length} ");
      player.play(AssetSource("audio.mp3")).whenComplete(
            () {},
          );
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RedScreen(
            color: Color(0xff6b009c),
          ),
        ),
      );
      debugPrint("completed");
      if (db.toDoList.length == 49) {
        showDialog(
          context: context,
          builder: (context) {
            return const ListCompleteDialog();
          },
        );
      }
      setState(() {
        db.toDoList[index][1] = true;
        db.updateDataBase();
      });
    }
  }

  void saveNewTask() async {
    if (_controller.text.trim().isEmpty) {
      return;
    }
    int count = db.toDoList.length;

    if (count < 1) {
      await addTask();
    } else {
      if (db.toDoList[count - 1][1] == false) {
        Functions.showSnackBar(
            context, "Please fulfil your current Divination");
        _controller.clear();
      } else {
        await addTask();
      }
    }

    db.updateDataBase();
  }

  Future<void> addTask() async {
    Navigator.of(context).pop();
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RedScreen(
          color: Color(0xff6b009c),
        ),
      ),
    );
    await player.play(AssetSource("audio.mp3")).whenComplete(() => {
          // Navigator.of(context).pop(),
          db.toDoList.add([_controller.text, false]),
          _controller.clear(),
          setState(() {}),
        });
  }

  void createNewTask() {
    int recentIndex = db.toDoList.length - 1;

    if (recentIndex == -1) {
      showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        },
      );
      return;
    }

    var completed = db.toDoList[recentIndex][1];
    if (!completed) {
      Functions.showSnackBar(context, "Please fulfil your current Divination");
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        },
      );
    }
  }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: itemCount(),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ToDoTile(
                      index: index + 1,
                      taskName: buildDoList(index),
                      taskCompleted: taskValue(index),
                      onChanged: (value) => checkBoxChanged(value, index),
                      deleteFunction: (context) => deleteTask(index),
                    ),
                    (index == 48) ? elevatedButton() : const SizedBox(),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(height: 1, color: Colors.black12),
                );
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }

  FloatingActionButton? buildFloatingActionButton() {
    if (db.toDoList.length >= 49) {
      return null;
    }
    return FloatingActionButton(
        backgroundColor: buttonColor(),
        onPressed: createNewTask,
        clipBehavior: Clip.antiAlias,
        child: Image(
          image: AssetImage(getLampImagePath()),
        )

        // child: const ImageIcon(AssetImage("assets/images/add.png")),
        );
  }

  String getLampImagePath() {
    if (db.toDoList.isNotEmpty) {
      int recentIndex = db.toDoList.length - 1;
      if (recentIndex < 0) {
        recentIndex = 0;
        return "assets/images/lamp_grey.gif";
      }
      var completed = db.toDoList[recentIndex][1];
      if (!completed) {
        return "assets/images/lamp_grey.gif";
      }
    }
    return "assets/images/add.gif";
  }

  int itemCount() {
    // if( db.toDoList.length > 49 ){
    //   return db.toDoList.length;
    // }
    return 49;
  }

  MaterialColor buttonColor() {
    int recentIndex = db.toDoList.length - 1;
    if (recentIndex < 0) {
      recentIndex = 0;
      return Colors.pink;
    }
    var completed = db.toDoList[recentIndex][1];
    if (!completed) {
      return Colors.grey;
    }

    return Colors.pink;
  }

  bool taskValue(int index) {
    if (index >= db.toDoList.length) {
      return false;
    }
    return db.toDoList[index][1];
  }

  String buildDoList(int index) {
    if (index >= db.toDoList.length) {
      return "";
    }
    return db.toDoList[index][0];
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
    );
  }

  Widget elevatedButton() {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(12),
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return const LearnPage();
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
                  "Learn",
                  style: buildTextStyle(),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        text(),
      ],
    );
  }

  Widget text() {
    if( db.toDoList.length !=49 ){
      return const SizedBox();
    }
    if( db.toDoList[48][1] ){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text(
          data(),
          textAlign: TextAlign.justify,
          style: AppTextStyle.nunito(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              )),
        ),
      );
    }
    return const SizedBox();
  }




  TextStyle buildTextStyle() {
    return AppTextStyle.nunito(
        style: TextStyle(
      fontSize: 24.w,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ));
  }


  String data() {
    return "Congratulations on getting this far.  I knew you would. \n\n"
        "Now that your Genie is programmed to materialise things that you expect "
        "and want to happen for you, your life will be better for it.  You no "
        "longer need The List, but if you do need a List, the right thing will "
        "come to you\n\n"
        "I would appreciate any feedback that you have, because whenever another "
        "life on Planet Earth becomes a little better, we all benefit from it.  "
        "With your help, Neural Genie will become a powerful force for good.\n\n"
        "neuralgenie@gmail.com";
  }


}
