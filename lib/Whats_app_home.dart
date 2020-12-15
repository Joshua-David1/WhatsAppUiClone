import 'package:flutter/material.dart';
import 'camera screen.dart';
import 'package:whatsapp_clone/Chat_screen.dart';
import 'package:whatsapp_clone/Status_screen.dart';
import 'package:whatsapp_clone/Call_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  dynamic fab;
  TabController _tabController;
  int index = 1;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1);
    fab = FAB(
      icon: Icons.message,
      press: () {},
    );
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        fab = FAB(
          icon: Icons.message,
          press: () {},
        );
      } else if (_tabController.index == 2) {
        fab = FAB(
          icon: Icons.camera,
          press: () {},
        );
      } else if (_tabController.index == 3) {
        fab = FAB(
          icon: Icons.call,
          press: () {},
        );
      } else {
        fab = null;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fab,
      appBar: AppBar(
        title: Text('WhatsApp UI Clone'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Tab(
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
            ),
            Tab(
              child: Text(
                'CHATS',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
        controller: _tabController,
      ),
    );
  }
}

class FAB extends StatelessWidget {
  final IconData icon;
  final Function press;
  FAB({this.icon, this.press});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: press,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
