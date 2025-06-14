import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateField extends StatelessWidget {
  const DateField({super.key, this.onChanged, required this.controller});
  final TextEditingController controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 241,

        child: TextField(
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            hintText: '10/20/24',
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
            suffixIcon: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (ctx) => Dialog(
                        child: CupertinoDatePicker(
                          showDayOfWeek: false,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (dateTime) {
                            controller.text =
                                "${dateTime.month}/${dateTime.day}/${dateTime.year}";
                            onChanged?.call(controller.text);
                          },
                        ),
                      ),
                );
              },
              child: Icon(
                Icons.table_chart,
                size: 16,
                color: Color(0xff222222),
              ),
            ),
            suffixIconConstraints: BoxConstraints(minWidth: 25, minHeight: 31),
          ),
          style: GoogleFonts.roboto(fontSize: 12.89),
        ),
      ),
    );
  }
}
