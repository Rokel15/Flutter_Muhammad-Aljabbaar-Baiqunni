import 'package:flutter/material.dart';
import 'DioServices.dart';

class PutPage extends StatefulWidget {
  const PutPage({Key? key}) : super(key: key);

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage>{
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  var data = 'no data';

  @override
  void initState() {
    DioServices().fetchData().then((result) {
      setState(() {
        this.data = result.toString();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: ListView(
        children: [
          //name
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                  hintText: 'title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  )
              ),
            ),
          ),

          //phone
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
            child: TextFormField(
              controller: bodyController,
              decoration: InputDecoration(
                  hintText: 'body',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  )
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
            width: double.infinity,
            child: Center(
              child: ElevatedButton(
                child: Text('Put'),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.white)
                ),
                onPressed: () async{
                  setState(() async{
                    final data = await DioServices().updateData(
                        title: titleController.text,
                        body: bodyController.text
                    );

                    setState(() {
                      this.data = data.toString();
                    });
                    titleController.text = '';
                    bodyController.text = '';
                  });
                },
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Data : ', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                Text('${data}')
              ],
            ),
          )
        ],
      ),
    );
  }
}
