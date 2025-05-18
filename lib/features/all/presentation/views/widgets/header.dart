import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.title,
    required this.date,
    required this.icon,
    required this.color,
  });
  final String title, date;
  final Icon icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        date,
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
          radius: 30,
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
