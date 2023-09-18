import 'package:flutter/material.dart';
import 'Favorites.dart';
import 'Search.dart';
import 'Information.dart';

void main() {
  runApp(soal_explorasi());
}

class soal_explorasi extends StatelessWidget {
  const soal_explorasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soal Explorasi',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(
        primaryColor : Color(0xff6200EE)
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Pages = [
    Favorites(),
    Search(),
    Information()
  ];

  int selectedIndex = 0;

  void onPage(index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information'
          )
        ],
        currentIndex: selectedIndex,
        onTap: onPage,
        backgroundColor : Theme.of(context).primaryColor,
        fixedColor: Colors.white,
      ),
      body: Pages.elementAt(selectedIndex),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: (){},
        backgroundColor: Color(0xff03DAC5),
      ),
    );
  }
}