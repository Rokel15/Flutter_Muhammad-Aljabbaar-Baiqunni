import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/images.dart';

class Head extends StatefulWidget {
  const Head({Key? key}) : super(key: key);

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/4,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(allcourse), fit: BoxFit.cover,),
            ),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'All Course',
                  style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w600),
                )
            )
        ),

        SizedBox(height: 10,),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Text(
                'About Us',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600
                    )
                ),
              ),

              Text(
                'Sebuah lembaga kursus yang ditujukan kepada seluruh khalayak khususnya bagi yang ingin terjun ke dunia network engineering, kami mnenyediakan kursus ccna untuk tingkat basic, ccnp untuk tingkat profesional dan ccie untuk tingkat expert',
                style: GoogleFonts.roboto(),
                textAlign: TextAlign.justify,
              ),

            ],
          ),
        ),


        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          child: Text(
            'Ikuti pelatihan skill network engineer pada perangkat cisco bersama kami',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600
              )
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          child: Text(
            'Kursus tersedia :',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600
                )
            ),
          ),
        )
      ],
    );
  }
}
