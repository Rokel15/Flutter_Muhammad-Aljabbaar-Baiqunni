import 'package:flutter/material.dart';
import 'main.dart';
import 'Contact.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MaterialAppp'),
        ),
        drawer: buildDrawer(context),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
              child: Text(
                'Contact Lists',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contactList.length,
              itemBuilder: (_, index) {
                Contact contact = contactList[index];
                return Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: double.infinity,
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle,
                      ),
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.width / 6,
                      child: Image.network(
                        contact.imageUrl,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    title: Text('${contact.name}',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        )
                      ),
                    ),
                    subtitle: Text('${contact.number}',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
