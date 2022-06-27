import 'package:flutter/material.dart';

class CreateChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('چت جدید'),
        ),
        body: Center(
          child: Text('ایجاد چت'),
        ),
      ),
    );
  }
}
