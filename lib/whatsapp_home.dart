import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/create_chat_screen.dart';
import 'package:whatsapp/pages/group_screen.dart';
import 'package:whatsapp/pages/setting_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  Map<String, SliverAppBar> appBarList;
  String _currentAppBar = 'mainAppBar';
  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 4, vsync: this);
    SliverAppBar mainAppBar = SliverAppBar(
      pinned: true,
      floating: true,
      elevation: 5,
      bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "چت ها"),
            Tab(text: "وضعیت"),
            Tab(text: "تماس ها")
          ]),
      title: Text('واتساپ'),
      actions: [
        GestureDetector(
          child: Icon(Icons.search),
          onTap: () {
            setState(() {
              _currentAppBar = "searchAppBar";
            });
          },
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
        PopupMenuButton<String>(onSelected: (String choice) {
          if (choice == 'settings') {
            Navigator.pushNamed(context, "/settings");
          } else if (choice == 'new_group') {
            Navigator.pushNamed(context, "/new_group");
          }
        }, itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
                value: 'new_group',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('گروه جدید'),
                  ],
                )),
            PopupMenuItem(
                value: 'settings',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تنظیمات'),
                  ],
                )),
          ];
        })
      ],
    );
    SliverAppBar searchAppBar = SliverAppBar(
        pinned: true,
        elevation: 5,
        backgroundColor: Colors.white,
        title: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: "جستجو..."),
        ),
        leading: GestureDetector(
          onTap: () {
            setState(() {
              _currentAppBar = "mainAppBar";
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff075e54),
            ),
          ),
        ));
    appBarList = <String, SliverAppBar>{
      "mainAppBar": mainAppBar,
      "searchAppBar": searchAppBar,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[appBarList[_currentAppBar]];
        },
        body: _currentAppBar == 'mainAppBar'
            ? TabBarView(controller: tabController, children: [
                CameraScreen(),
                ChatScreen(),
                StatusScreen(),
                CallScreen(),
              ])
            : Center(child: Text("Search")),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {
          Navigator.pushNamed(context, "/new_chat");
        },
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
