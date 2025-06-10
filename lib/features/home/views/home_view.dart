// import 'package:flutter/material.dart';
// import 'package:todo/features/home/views/all_tasks_view.dart';
// import 'package:todo/features/home/views/completed_tasks_view.dart';
// import 'package:todo/features/home/views/pending_tasks_view.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   int _currentIndex = 0;
//   final PageController _controller = PageController(initialPage: 0);

//   final List<Widget> _screens = const [
//     AllTasksView(),
//     PendingTasksView(),
//     CompletedTasksView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: PageView(
//           controller: _controller,
//           onPageChanged: (page) {
//             setState(() {
//               _currentIndex = page;
//             });
//           },
//           children: _screens,
//         ), // Show selected screen
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.only(bottom: 16),
//           child: Container(
//             height: 51,
//             width: double.infinity,
//             margin: const EdgeInsets.symmetric(horizontal: 16),
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 241, 240, 240),
//               borderRadius: BorderRadius.circular(40),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 10,
//                   offset: Offset(0, -2),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _buildTabItem('All', 0),
//                 _buildTabItem('Pending', 1),
//                 _buildTabItem('Completed', 2),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTabItem(String label, int index) {
//     final isSelected = _currentIndex == index;

//     return GestureDetector(
//       onTap: () {
//         _controller.animateToPage(
//           index,
//           duration: const Duration(milliseconds: 500),
//           curve: Curves.easeInOut,
//         );
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//         width: 100,
//         height: 31,
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.black : Colors.transparent,
//           borderRadius: BorderRadius.circular(24),
//         ),
//         child: Center(
//           child: Text(
//             label,
//             style: TextStyle(
//               color: isSelected ? Colors.white : const Color(0xffB0B0B0),
//               fontWeight: FontWeight.w500,
//               fontSize: 10,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
