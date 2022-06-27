import 'package:flutter/material.dart';

class GroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('گروه جدید'),
        ),
        body: Center(
          child: Text('ایجاد گروه'),
        ),
      ),
    );
  }
}
