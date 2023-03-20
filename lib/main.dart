import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_firebase/screens/edi_add_notes_page.dart';
import 'package:notes_firebase/screens/home_page.dart';
import 'package:notes_firebase/screens/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: {
        "splash_screen": (context) => const SplashScreen(),
        "/": (context) => const HomePage(),
        "edit_add_notes_page": (context) => const EditAddNotesPage(),
      },
    ),
  );
}