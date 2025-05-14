import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Tasks',
        style: GoogleFonts.montserrat(
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'October 15',
        style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xff757575),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add_circle, size: 42),
      ),
    );
  }
}
