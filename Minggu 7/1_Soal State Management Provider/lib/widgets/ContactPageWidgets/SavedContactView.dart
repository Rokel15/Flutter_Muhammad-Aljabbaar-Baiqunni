import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/ContactData.dart';
import '../../models/ContactModel.dart';
import 'package:provider/provider.dart';
import 'package:soal_state_management_provider/providers/Provide.dart' as provider;

class SavedContactView extends StatefulWidget {
  const SavedContactView({Key? key}) : super(key: key);

  @override
  State<SavedContactView> createState() => _SavedContactViewState();
}

class _SavedContactViewState extends State<SavedContactView> {
  @override
  Widget build(BuildContext context) {
    final prvd = Provider.of<provider.Provide>(context);
    return ListView.builder(
      itemCount: contacts.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final contact = contacts[index];
        return ListTile(
            leading: Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.width / 7,
              decoration: BoxDecoration(
                  color: Color(0xffEADDFF), shape: BoxShape.circle),
              child: Center(
                child: Text(
                  '${contacts[index].name[0]}',
                  style: GoogleFonts.roboto(
                      textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                ),
              ),
            ),
            title: Text(
              '${contact.name}',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
            subtitle: Text(
              '${contact.number}',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
            trailing: Wrap(
              children: [
                InkWell(
                  child: Icon(Icons.edit, color: Colors.white),
                  onTap: () {
                    UpdateNama_dan_Nomor(context: context, contact: contact,);
                  },
                ),
                SizedBox(width: 5,),
                InkWell(
                  child: Icon(Icons.delete, color: Colors.white,),
                  onTap: () {
                    prvd.deleteContact(index);

                    // setState(() {
                    //   contacts.remove(contacts[index]);
                    // });
                  },
                ),
              ],
            ));
      },
    );
  }

  Future<Null> UpdateNama_dan_Nomor({
    required BuildContext context,
    required ContactModel contact,
  }) async {
    TextEditingController updateNama = TextEditingController();
    TextEditingController updateNomor = TextEditingController();

    updateNama.text = contact.name;
    updateNomor.text = contact.number.toString();

    var simpleDialog = SimpleDialog(
      title: Center(
        child: Text(
          'Udpate Contact',
          style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                // color: Colors.white
              )),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      children: <Widget>[
        Material(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                TextFormField(
                  controller: updateNama,
                  decoration: InputDecoration(hintText: 'Update name'),
                ),
                TextFormField(
                  controller: updateNomor,
                  decoration: InputDecoration(hintText: 'Update number'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 13, bottom: 8),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[600]),
                        child: Text('Update',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))),
                      ),
                      onTap: () {
                        setState(() {
                          contact.name = updateNama.text;
                          contact.number = updateNomor.text;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 13, bottom: 8),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[600]),
                        child: Text('Cancel',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return simpleDialog;
        });
  }
}
