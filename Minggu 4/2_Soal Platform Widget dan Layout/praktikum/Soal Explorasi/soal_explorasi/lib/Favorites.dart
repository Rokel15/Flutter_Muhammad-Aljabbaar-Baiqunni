import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List items = [
    'Learn FLutter',
    'Learn ReactJS',
    'Learn VueJS',
    'Learn Talwind CSS',
    'Learn UI/UX',
    'Learn Figma',
    'Learn Digital Marketing',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, index){
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
          child: Text(
            '${items[index]}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),
          ),
        );
      },
    );
  }
}
