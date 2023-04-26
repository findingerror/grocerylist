import 'package:flutter/material.dart';
import 'package:grocery_list/demo.dart';
import 'package:grocery_list/view/register.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('grocery_list');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//Flutter API Calling para Local Database (EP10)
// ang Local Database - NoSQL Database, Hive na local database

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //create a new class for this
      home: Demo(),
    );
  }
}
