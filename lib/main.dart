import 'package:flutter/material.dart';
import 'package:travel_app/views/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perumotion App demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MainPage(),
    );
  }
}
