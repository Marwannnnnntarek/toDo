import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTasksBody extends StatelessWidget {
  const AddTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            context.go('/AllTasksView');
          },
          child: Text(
            'Cancel',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xff757575),
            ),
          ),
        ),
        Text(
          'Add a task',
          style: GoogleFonts.montserrat(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
