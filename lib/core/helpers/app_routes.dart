import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/features/add/presentation/views/add_tasks_view.dart';
import 'package:todo/features/all/presentation/views/all_tasks_view.dart';
import 'package:todo/features/completed/presentation/views/completed_tasks_view.dart';
import 'package:todo/features/home/presentation/views/home_view.dart';
import 'package:todo/features/pending/presentation/views/pending_tasks_view.dart';

class AppRoutes {
  static const String home = '/';
  static const String allTasks = '/AllTasksView';
  static const String pendingTasks = '/PendingTasksView';
  static const String completedTasks = '/CompletedTasksView';
  static const String addTasks = '/AddTasksView';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: allTasks,
        builder: (context, state) => const AllTasksView(),
      ),
      GoRoute(
        path: pendingTasks,
        builder: (context, state) => const PendingTasksView(),
      ),
      GoRoute(
        path: completedTasks,
        builder: (context, state) => const CompletedTasksView(),
      ),
      GoRoute(
        path: addTasks,
        builder: (context, state) => const AddTasksView(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Page not found: ${state.uri.path}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
    ),
  );
}
