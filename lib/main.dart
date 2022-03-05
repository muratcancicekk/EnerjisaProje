import 'package:flutter/material.dart';
import 'package:sadeneme/add_page/add_page.dart';
import 'package:sadeneme/dwelling_page/dwelling_Page.dart';
import 'package:sadeneme/home_page/home_page.dart';
import 'package:sadeneme/uses_control_page/control_page.dart';
import 'package:sadeneme/uses_page/uses_page.dart';
import 'login_page/login_page.dart';
import 'nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 178, 240, 195),
          body: NavBar(),
        ),
      ),
    );
  }
}
