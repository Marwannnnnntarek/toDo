import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTitle extends StatelessWidget {
  const AddTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Add a task',
        style: GoogleFonts.montserrat(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
