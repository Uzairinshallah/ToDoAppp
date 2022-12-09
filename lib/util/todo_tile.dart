import 'package:flutter/material.dart';

import '../data/database.dart';
import '../pages/confirm_alert.dart';
import 'functions.dart';

class ToDoTile extends StatefulWidget {
  final String taskName;
  final int index;
  final bool taskCompleted;
  Function(bool?) onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.index,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // checkbox
            // Checkbox(
            //   value: widget.taskCompleted,
            //   onChanged: widget.onChanged,
            //   activeColor: Colors.black,
            // ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  if (widget.taskName.trim().isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          ConfirmAlert(),
                    ).then(
                          (val) async {
                        if (val == true) {
                          widget.onChanged(widget.taskCompleted);
                        }
                      },

                    );
                  }
                },
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: Image(
                    key: UniqueKey(),
                    image: AssetImage(getImagePath(widget.taskCompleted)),
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  widget.index.toString(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                widget.taskName,
                style: TextStyle(
                  decoration: widget.taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getImagePath(bool show) {
    if (show) {
      return "assets/images/cmplt.png";
    }
    return "assets/images/incmplt.png";
  }
}
