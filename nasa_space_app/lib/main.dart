import 'package:flutter/material.dart';
import 'package:nasa_space_app/shared/theme.dart';
import 'package:nasa_space_app/views/pages/home_page.dart';
import 'package:nasa_space_app/views/pages/loading_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nasa Space Apps',
      debugShowCheckedModeBanner: false,
      theme: astronomyTheme,
      home: const HomePage(),
    );
  }
}
