import 'package:flutter/material.dart';
import 'package:todoapp/views/home_view.dart';
import 'package:todoapp/views/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      theme: ThemeData(),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
