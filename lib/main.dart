import 'package:flutter/material.dart';
import 'package:money_manager/home_page.dart';
import 'package:money_manager/test.dart';
import 'package:money_manager/transcation_add.dart';
          
void main() {
  runApp(const MyApp());
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
          scaffoldBackgroundColor: const Color.fromARGB(255, 54, 53, 53),
          fontFamily: 'Handjet',
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 134, 132, 137)),
          useMaterial3: true,
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 40, color: Colors.white),
            bodyMedium: TextStyle(fontSize: 25, color: Colors.white),
            bodySmall: TextStyle(fontSize: 20, color: Colors.white),
            titleMedium: TextStyle(fontSize: 30, color: Colors.white),
            labelMedium: TextStyle(fontSize: 25, color: Colors.black),
          )),
      home: const AddTransaction(),
    );
  }
}
