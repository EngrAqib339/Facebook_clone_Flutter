import 'package:flutter/material.dart';

void main() {
  runApp(FacebookCloneApp());
}

class FacebookCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FacebookHomePage(),
    );
  }
}
