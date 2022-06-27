import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('تنظیمات'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                  child: Text('برگشت'),
                  onPressed: () {
                    Navigator.pop(context );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
