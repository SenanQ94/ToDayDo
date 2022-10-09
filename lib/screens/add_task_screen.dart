import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
  AddTaskScreen();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigo[400],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: _text,
            decoration: InputDecoration(
              errorText: _validate ? 'Value Can\'t be empty' : null,
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              setState(
                () {
                  if (_text.text.isEmpty) {
                    _validate = true;
                  } else {
                    _validate = false;
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(newTaskTitle!);
                    Navigator.pop(context);
                  }
                },
              );
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
