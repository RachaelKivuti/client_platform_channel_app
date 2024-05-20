import 'package:flutter/material.dart';
import 'package:client_platform_channel_app/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // the root of application widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layouts',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const Home(),
    );
  }
}
