import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/images.dart';

class CCIE extends StatefulWidget {
  const CCIE({Key? key}) : super(key: key);

  @override
  State<CCIE> createState() => _CCIEState();
}

class _CCIEState extends State<CCIE> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height/3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.black),
        ),
        child: GridTile(
          child: Image.asset(ccie, fit: BoxFit.cover,),
          footer: Center(
              child: Text(
                'CCIE Course',
                style: GoogleFonts.roboto(
                  fontSize: 16, fontWeight: FontWeight.w600
                ),
              )
          ),
        ),
      ),
    );
  }
}
