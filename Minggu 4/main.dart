import 'package:flutter/material.dart';
import 'Home.dart';
import 'Settings.dart';

void main() {
  runApp(MaterialDesign());
}

class MaterialDesign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark()
      ),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) {return Home();},
        '/Setting' : (BuildContext context){return Settings();}
      },
    );
  }
}

Widget buildDrawer(BuildContext context){
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text('Home'),
          onTap: (){Navigator.pushNamed(context, '/');},
        ),
        ListTile(
          title: Text('Settings'),
          onTap: (){Navigator.pushNamed(context, '/Setting');}
        ),
      ],
    ),
  );
}
