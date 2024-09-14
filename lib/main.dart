import 'package:fitness_care_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.robotoFlexTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomePage()
    );
  }
}