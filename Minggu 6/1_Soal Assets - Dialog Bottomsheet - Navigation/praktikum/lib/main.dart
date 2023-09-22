import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minggu6_soal_prioritas_1/screens/MainPage.dart';
import 'package:minggu6_soal_prioritas_1/screens/NextPage.dart';

void main() {
  runApp(Minggu6());
}

class Minggu6 extends StatelessWidget {
  const Minggu6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
        )
      ),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => MainPage(),
        '/NextPage' : (BuildContext context) => NextPage(),
      },
      // home: MainPage(),
    );
  }
}
