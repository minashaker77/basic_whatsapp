import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.of(context).pushNamed('/main_screen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff075e54),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 125,
                  width: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/whatsapp1.png')),
                  )),
              Text(
                'واتساپ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Vazir',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
