import 'package:code_competence_2/widgets/CCIE.dart';
import 'package:code_competence_2/widgets/CCNA.dart';
import 'package:code_competence_2/widgets/CCNP.dart';
import 'package:code_competence_2/widgets/Head.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeCompetence2 extends StatefulWidget {
  const CodeCompetence2({Key? key}) : super(key: key);

  @override
  State<CodeCompetence2> createState() => _CodeCompetence2State();
}

class _CodeCompetence2State extends State<CodeCompetence2> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cisco Course'),
      ),
      drawer: buildDrawer(context),
      body: ListView(
        children: [
          Head(),

          SizedBox(height: 10,),

          //the course
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Column(
              children: [
                //ccna
                CCNA(),

                SizedBox(height: 20,),

                //ccnp
                CCNP(),

                SizedBox(height: 20,),

                //ccie
                CCIE()
              ],
            ),
          ),

          SizedBox(height: 30,),

          //Contact Us
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700
                          )
                        ),
                      ),
                      Text(
                        'What we can help you with?',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'username',
                    labelText: 'username',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(13)
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 8,),

                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'e-mail',
                    labelText: 'e-mail',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(13)
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 8,),

                TextFormField(
                  controller: messageController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'message',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 8,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      child: Text('Submit', style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        side: BorderSide(color: Colors.black)
                      ),
                      onPressed: (){}
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildDrawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Login', style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600)),),
            onTap: (){},
          ),
          ListTile(
            title: Text('About Us', style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600))),
            onTap: (){},
          ),
          ListTile(
            title: Text('Contact Us', style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w600))),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}