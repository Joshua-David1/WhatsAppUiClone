import 'package:flutter/material.dart';
import 'Whats_app_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}
