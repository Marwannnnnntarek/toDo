import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Header3 extends StatelessWidget {
  const Header3({
    super.key,
    required this.title,

    required this.icon,
    required this.color,
  });
  final String title;
  final Icon icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final String today = DateFormat(
      'EEEE, MMMM d, yyyy',
    ).format(DateTime.now());
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        today,
        style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xff757575),
        ),
      ),
      trailing: SizedBox(
        width: 42,
        height: 42,
        child: CircleAvatar(
          backgroundColor: color,
          child: IconButton(
            icon: icon,
            onPressed: () {
              context.go('/AddTasksView');
            },
          ),
        ),
      ),
    );
  }
}
