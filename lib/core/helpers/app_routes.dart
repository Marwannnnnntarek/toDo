import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/features/add_task/presentation/views/add_tasks_view.dart';
import 'package:todo/features/auth/views/login_view.dart';
import 'package:todo/features/auth/views/register_view.dart';
import 'package:todo/features/home/views/all_tasks_view.dart';
import 'package:todo/features/home/views/completed_tasks_view.dart';
import 'package:todo/features/home/views/home_view.dart';
import 'package:todo/features/home/views/pending_tasks_view.dart';

class AppRoutes {
  static const String login = '/LoginView';
  static const String home = '/HomeView';
  static const String allTasks = '/AllTasksView';
  static const String pendingTasks = '/PendingTasksView';
  static const String completedTasks = '/CompletedTasksView';
  static const String addTasks = '/AddTasksView';
  static const String register = '/RegisterView';

  static final GoRouter router = GoRouter(
    initialLocation: login,
    routes: [
      GoRoute(path: home, builder: (context, state) => const HomeView()),
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
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(path: login, builder: (context, state) => const LoginView()),
    ],
    errorBuilder:
        (context, state) => Scaffold(
          body: Center(
            child: Text(
              'Page not found: ${state.uri.path}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
  );
}
