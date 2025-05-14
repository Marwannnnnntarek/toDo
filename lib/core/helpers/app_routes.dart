import 'package:go_router/go_router.dart';
import 'package:todo/features/all/presentation/views/all_tasks_view.dart';
import 'package:todo/features/completed/presentation/views/completed_tasks_view.dart';
import 'package:todo/features/home/presentation/views/home_view.dart';
import 'package:todo/features/pending/presentation/views/pending_tasks_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeView()),
    GoRoute(
      path: '/AllTasksView',
      builder: (context, state) => const AllTasksView(),
    ),
    GoRoute(
      path: '/PendingTasksView',
      builder: (context, state) => const PendingTasksView(),
    ),
    GoRoute(
      path: '/CompletedTasksView',
      builder: (context, state) => const CompletedTasksView(),
    ),
  ],
);
