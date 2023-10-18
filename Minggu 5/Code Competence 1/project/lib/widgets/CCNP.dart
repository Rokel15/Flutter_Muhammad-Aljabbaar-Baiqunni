import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/images.dart';

class CCNP extends StatefulWidget {
  const CCNP({Key? key}) : super(key: key);

  @override
  State<CCNP> createState() => _CCNPState();
}

class _CCNPState extends State<CCNP> {
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
          child: Image.asset(ccnp, fit: BoxFit.cover,),
          footer: Center(
              child: Text(
                'CCNP Course',
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
