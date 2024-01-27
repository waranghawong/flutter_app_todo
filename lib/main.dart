import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/auth/auth_page.dart';
import 'package:flutter_app/auth/main_page.dart';
import 'package:flutter_app/screen/add_note_screen.dart';
import 'package:flutter_app/screen/home.dart';
import 'package:flutter_app/screen/login.dart';
import 'widgets/task_wldget.dart';
import 'package:flutter_app/screen/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Add_Screen(),
    );
  }
}
