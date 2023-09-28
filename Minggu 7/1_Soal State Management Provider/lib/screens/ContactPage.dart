import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soal_state_management_provider/widgets/ContactPageWidgets/BasicDialog.dart';
import 'package:soal_state_management_provider/widgets/ContactPageWidgets/SavedContactView.dart';
import 'package:soal_state_management_provider/widgets/ContactPageWidgets/textFormField.dart';
import '../data/ContactData.dart';
import '../models/ContactModel.dart';
import 'package:soal_state_management_provider/providers/Provide.dart' as provider;

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String name = '';
  String number = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final prvd = Provider.of<provider.Provide>(context);
    return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(0),
         child: AppBar(),
       ),
      body: ListView(
        children: <Widget>[
          BasicDialog(),
          SizedBox(height: 15),
          //input name
          FormInput(
            controller: nameController,
            labelText: 'Name',
            hintText: 'insert your name',
            inputNumberOnly: false,
            function_number: 1,
            onChanged: (String val){
              setState(() {
                this.name = val;
              });
            },
          ),
          SizedBox(height: 15),
          //input number
          FormInput(
            controller: phoneNumberController,
            labelText: 'Nomor',
            hintText: '+62....',
            inputNumberOnly: true,
            function_number: 2,
            onChanged: (String val){
                setState(() {
                  this.number = val;
                });
            },
          ),
          SizedBox(height: 15),
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
                    name.split(' ').every((element){
                      final pattern = RegExp(r"^[A-Z][a-z]*$");
                      return pattern.hasMatch(element) && !element.contains(RegExp(r'[0-9!@#%^&*()_+|~=`{}\[\]:";<>?,./\\]'));
                    }) &&
                    number.startsWith('0') &&
                    int.tryParse(number) !=null &&
                    number.length >= 8 &&
                    number.length <= 15
                    ?
                (){
                  prvd.addContact(name, number);
                  nameController.text = '';
                  phoneNumberController.text = '';
                } : null
              ),
              SizedBox(width: 21,),
            ],
          ),
          SizedBox(height: 15,),
          SavedContactView()
        ],
      ),
    );
  }
}
