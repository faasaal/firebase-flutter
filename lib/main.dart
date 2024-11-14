import 'package:flutter/material.dart';
import 'package:your_app_name/home.dart';
import 'package:your_app_name/add.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      routes: {
        '/': (context) => HomePage(),
        '/add': (context) => AddUser(),
      },
      initialRoute: '/',
    );
  }
}
