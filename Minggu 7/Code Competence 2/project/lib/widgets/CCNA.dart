import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/images.dart';

class CCNA extends StatefulWidget {
  const CCNA({Key? key}) : super(key: key);

  @override
  State<CCNA> createState() => _CCNAState();
}

class _CCNAState extends State<CCNA> {
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
          child: Image.asset(ccna, fit: BoxFit.cover,),
          footer: Center(
              child: Text(
                'CCNA Course',
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
