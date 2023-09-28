import 'package:flutter/material.dart';
import 'package:soal_state_management_provider/screens/ContactPage.dart';
import 'package:provider/provider.dart';
import 'package:soal_state_management_provider/providers/Provide.dart' as provider;

void main() {
  // runApp(const MyApp());
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => provider.Provide(),
            )
          ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true
      ),
      home: ContactPage(),
    );
  }
}