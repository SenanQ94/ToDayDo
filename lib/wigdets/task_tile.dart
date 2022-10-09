import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() listTileDelete;

  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxChange,
    required this.listTileDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          GestureDetector(
            onLongPress: listTileDelete,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: isChecked
                            ? Colors.black45
                            : Colors.black.withOpacity(0.85),
                        fontStyle: isChecked ? FontStyle.italic : null,
                      ),
                      children: [
                        TextSpan(
                            text: "\u2022  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25)),
                        TextSpan(
                            text: taskTitle,
                            style: TextStyle(
                                fontSize: 20,
                                decoration: isChecked
                                    ? TextDecoration.lineThrough
                                    : null)),
                      ],
                    ),
                  ),
                ),
                Checkbox(
                  activeColor: Colors.teal[400],
                  value: isChecked,
                  onChanged: checkBoxChange,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.7,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
