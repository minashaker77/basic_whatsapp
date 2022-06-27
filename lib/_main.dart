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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      theme: ThemeData(
        fontFamily: 'Vazir',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff25d366),
      ),
      initialRoute: "/",
      routes: {
        "/main_screen": (context) => Directionality(
            textDirection: TextDirection.rtl, child: WhatsAppHome()),
        "/": (context) => Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()),
        "/settings": (context) => SettingScreen(),
        "/new_chat": (context) => CreateChatScreen(),
        "/new_group": (context) => GroupScreen(),
        // "/single_chat_screen" : (context) => SingleChatScreen(data: dummyData[index])
      },
      // home: Directionality(
      //     textDirection: TextDirection.rtl, child: WhatsAppHome()),
    );
  }
}
