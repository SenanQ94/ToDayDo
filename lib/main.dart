import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';
import '../models/task_data.dart';
import 'screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // SharedPreferences? sharedPreferences;

  // @override
  // void initState() {
  //   initSharedPreferences();

  //   super.initState();
  // }

  // void initSharedPreferences() async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   Provider.of<TaskData>(context).loadData();
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
