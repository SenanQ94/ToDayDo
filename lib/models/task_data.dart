// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:todaydo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  // SharedPreferences? sharedPreferences;

  // @override
  // void initState() {
  //   initSharedPreferences();
  // }

  // void initSharedPreferences() async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   loadData();
  // }

  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'buy a gift'),
    Task(name: 'call mom'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    //saveData();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    //saveData();
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneBox();
    //saveData();
    notifyListeners();
  }

  // void saveData() {
  //   List<String> spList =
  //       tasks.map((item) => json.encode(item.toMap())).toList();

  //   sharedPreferences!.setStringList('tasks', spList);
  //   notifyListeners();
  // }

  // void loadData() {
  //   List<String>? spList = sharedPreferences!.getStringList('tasks');
  //   tasks = spList!.map((item) => Task.fromMap(json.decode(item))).toList();
  //   notifyListeners();
  // }
}
