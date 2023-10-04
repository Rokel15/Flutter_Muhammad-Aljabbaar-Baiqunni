import 'package:flutter/material.dart';
import 'DioServices.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String data = '';
  
  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: ListView(
        children: [
          SizedBox(height: 20,),

          //name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                )
              ),
            ),
          ),

          SizedBox(height: 10,),

          //phone
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: 'phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  )
              ),
            ),
          ),

          SizedBox(height: 20,),

          Center(
            child: ElevatedButton(
                child: Text('POST'),
                onPressed: () async{
                  final data = await DioServices().addContact(
                      name: nameController.text,
                      phone: phoneController.text
                  );
                  setState(() {
                    this.data = data.toString();
                  });
                  nameController.text = '';
                  phoneController.text = '';
                }
            ),
          ),

          SizedBox(height: 20,),

          Container(
              padding: EdgeInsets.symmetric(horizontal: 13),
              width: double.infinity,
              child: Text('data :', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 13),
              width: double.infinity,
              child: Text('$data')
          )
        ],
      ),
    );
  }
}
