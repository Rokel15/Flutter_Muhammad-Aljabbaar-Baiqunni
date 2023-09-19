import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tugas M5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}

class ContactModel {
  String name;
  int number;

  ContactModel({required this.name, required this.number});
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ContactModel> contacts = [];

  String name = '';
  String number = '';

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  void onChanged_name(String inputName) {
    setState(() {
      this.name = inputName;
    });
  }

  void onChanged_number(String inputNumber) {
    setState(() {
      this.number = inputNumber;
    });
  }

  bool isName_2_kalimat(String text) {
    var sentences = text.split('.');
    return sentences.length >= 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            basicDialog(context),

            SizedBox(height: 15),

            //name
            textFormField(
              controller: nameController,
              labelText: 'Name',
              hintText: 'Insert Your Name',
              inputNumberOnly: false,
              function_number: 1,
            ),

            //number
            SizedBox(height: 15),

            textFormField(
                controller: numberController,
                labelText: 'Nomor',
                hintText: '+62....',
                inputNumberOnly: true,
                function_number: 2
            ),

            SizedBox(height: 15),
            //Submit new contact

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    'Submit',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6750A4),
                      disabledBackgroundColor: Colors.grey
                  ),
                  onPressed: name.isNotEmpty &&
                      number.isNotEmpty &&
                      name.split(' ').length>=2 &&
                      name.split(' ').every((element) {
                        final pattern = RegExp(r"^[A-Z][a-z]*$");
                        return pattern.hasMatch(element) && !element.contains(RegExp(r'[0-9!@#%^&*()_+|~=`{}\[\]:";<>?,./\\]'));
                      }) &&
                      (number.startsWith('0') || int.tryParse(number) != null) &&
                      number.length >= 8 &&
                      number.length <= 15
                      ?
                      (){
                    setState(() {
                      contacts.add(ContactModel(
                          name: name, number: int.parse(number)));
                      contacts.forEach((element) {
                        print('Nama: ${element.name}, Nomor: ${element
                            .number}');
                      });
                      nameController.text = '';
                      numberController.text = '';
                    });
                  } : null,
                ),
                SizedBox(width: 21,),
              ],
            ),

            SizedBox(height: 49),

            //List Contacts (tv)
            Center(
              child: Text(
                'List Contacts',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0xff1C1B1F)),
              ),
            ),

            SizedBox(height: 15,),

            //show List Contacts
            listContact(context)
          ],
        ));
  }

  Widget basicDialog(BuildContext context) {
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

  Widget textFormField({
    required controller,
    required labelText,
    required hintText,
    required bool inputNumberOnly,
    required int function_number,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: controller,
        keyboardType:
        inputNumberOnly == true ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4), topLeft: Radius.circular(4))),
          fillColor: Color(0xffE7E0EC),
        ),
        onChanged: (String input) {
          function_number==1? onChanged_name(input) : onChanged_number(input);
        },
        inputFormatters: inputNumberOnly == true ?
        <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))] :
        <TextInputFormatter>[],
      ),
    );
  }

  Widget listContact(BuildContext context) {
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
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            title: Text(
              '${contact.name}',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1C1B1F))),
            ),
            subtitle: Text(
              '${contact.number}',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff49454F)),
              ),
            ),
            trailing: Wrap(
              children: [
                InkWell(
                  child: Icon(Icons.edit, color: Color(0xff1C1B1F)),
                  onTap: () {
                    UpdateNama_dan_Nomor(context: context, contact: contact);
                  },
                ),
                InkWell(
                  child: Icon(
                    Icons.delete,
                    color: Color(0xff1C1B1F),
                  ),
                  onTap: () {
                    setState(() {
                      contacts.remove(contacts[index]);
                    });
                  },
                ),
              ],
            ));
      },
    );
  }

  Future<Null> UpdateNama_dan_Nomor(
      {required BuildContext context, required ContactModel contact}) async {
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
          color: Colors.white,
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
                          contact.number =
                              int.parse(updateNomor.text.toString());
                        });
                        Get.back();
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
                        Get.back();
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
