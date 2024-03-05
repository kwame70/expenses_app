import 'package:expense_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.white, width: 1),
    );
    return MaterialApp(
      title: 'Expenses App',
      theme: ThemeData(
        fontFamily: "Ubuntu",
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: border,
          focusedBorder: border,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
