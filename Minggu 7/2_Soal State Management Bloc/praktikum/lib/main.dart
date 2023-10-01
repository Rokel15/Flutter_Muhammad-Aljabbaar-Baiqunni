import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_state_management_bloc/screens/MainPage.dart';
import 'package:soal_state_management_bloc/screens/NextPage.dart';
import 'package:soal_state_management_bloc/bloc/minggu7_bloc.dart';


void main() {
  runApp(Minggu7());
}

class Minggu7 extends StatelessWidget {
  const Minggu7({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Minggu7Bloc(),
      child: GetMaterialApp(
        title: 'soal state management bloc',
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
      ),
    );
  }
}
