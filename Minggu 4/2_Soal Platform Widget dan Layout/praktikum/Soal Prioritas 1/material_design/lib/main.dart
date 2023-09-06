import 'package:flutter/material.dart';
import 'Home.dart';
import 'Settings.dart';

void main() {
  runApp(material_design());
}

class material_design extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.dark()
      ),
      home: MainPage(),
      // initialRoute: '/',
      // routes: {
      //   '/' : (BuildContext context) {return Home();},
      //   '/Settings' : (BuildContext context){return Settings();}
      // },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  final Pages = [
    Home(),
    Settings()
  ];
  
  int selectIndex = 0;
  
  void onPage(int index){
    setState(() {
      selectIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
        currentIndex: selectIndex,
        onTap: onPage,
      ),
      body: Pages.elementAt(selectIndex),
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
            onTap: (){Navigator.pushNamed(context, '/Settings');}
        ),
      ],
    ),
  );
}