import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:navigi/dashboard/homescreen.dart';
import 'package:navigi/dashboard/profilescreen.dart';
import 'package:navigi/cv_screen.dart';
import 'package:navigi/dashboard/searchscreen.dart';
import 'package:navigi/dashboard/settingsscreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(FontAwesome.comment)),
            Tab(
              child: Image.asset(
                "assets/images/help-support.png",
                width: 30,
              ),
            ),
            Tab(icon: Icon(Icons.notifications)),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          ProfileScreen(),
          ChatScreen(),
          SearchScreen(),
          NotificationScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat Screen'),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notification Screen'),
    );
  }
}
