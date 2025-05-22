import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/core/helpers/app_routes.dart';
import 'package:todo/core/models/task_model.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('task_box');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
