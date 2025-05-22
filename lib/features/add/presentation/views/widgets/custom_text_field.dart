import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.onSaved,
    this.onChanged,
  });

  final String hint;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 241,
        height: 31,
        child: TextFormField(
          onSaved: onSaved,
          onChanged: onChanged,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'This field is required';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 12.89,
              fontWeight: FontWeight.normal,
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 0.38),
            ),
            contentPadding: EdgeInsets.only(bottom: 18),
          ),
        ),
      ),
    );
  }
}
