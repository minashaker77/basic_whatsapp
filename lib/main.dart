import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/create_chat_screen.dart';
import 'package:whatsapp/pages/group_screen.dart';
import 'package:whatsapp/pages/setting_screen.dart';
import 'package:whatsapp/pages/single_chat_screen.dart';
import 'package:whatsapp/pages/splash_screen.dart';
import 'whatsapp_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  AnimationController controller;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 300,
                width: 300,
                child: FlutterLogo(),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Run'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
