import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class SingleChatScreen extends StatelessWidget {
  final ChatModel data;

  SingleChatScreen({@required this.data});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(7, 5, 7, 5),
                  child: Text(data.name)),
            ],
          ),
        ),
        body: Center(
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context, "سلام ${this.data.name}");
              },
              child: Text('برگشت')),
        ),
      ),
    );
  }
}
