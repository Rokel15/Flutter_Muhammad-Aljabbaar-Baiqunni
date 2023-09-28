import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicDialog extends StatefulWidget {
  const BasicDialog({Key? key}) : super(key: key);

  @override
  State<BasicDialog> createState() => _BasicDialogState();
}

class _BasicDialogState extends State<BasicDialog> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56, left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Icon(Icons.phone_android),
          SizedBox(height: 16),
          Text('Create New Contacts',
              style: GoogleFonts.roboto(
                  textStyle:
                  TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
              style:
              GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              height: 17,
            ),
          )
        ],
      ),
    );
  }
}
