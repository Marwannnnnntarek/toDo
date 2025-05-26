import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/core/helpers/app_routes.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_cubit.dart';

import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // هذا مهم خاصة مع async
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('task_box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AllTasksCubit()..loadTasks()),
        BlocProvider(create: (_) => AddTaskCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
