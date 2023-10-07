import 'package:flutter/material.dart';
import 'package:no_2/DioServices.dart';
import 'package:no_2/models/ContactModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'soal prioritas 1 no 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: DataPage(),
      // home: DataPage(),
    );
  }
}

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Text('Contact :', style: TextStyle(fontSize: 16),),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: FutureBuilder(
              future: DioServices().fethData(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  final contact = snapshot.data as Contact;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Id : ${contact.id}'),
                      Text('Name : ${contact.name}'),
                      Text('Phone : ${contact.phone}')
                    ],
                  );
                }
                else{
                  return Center(child: CircularProgressIndicator(),);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
