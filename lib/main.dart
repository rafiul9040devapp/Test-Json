import 'package:flutter/material.dart';
import 'package:test_json/pages/home_page.dart';
import 'package:test_json/pages/photo_page.dart';
import 'package:test_json/pages/post_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  PhotoPage(),
    );
  }
}
