import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbar/Fragment/alarm.dart';
import 'package:tabbar/Fragment/contact.dart';
import 'package:tabbar/Fragment/email.dart';
import 'package:tabbar/Fragment/person.dart';
import 'package:tabbar/Fragment/search.dart';
import 'package:tabbar/Fragment/settings.dart';
import 'package:tabbar/Fragment/share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Domar"),
          backgroundColor: Colors.cyan,
          bottom: TabBar(
            isScrollable: true,
            tabs: [

              Tab(icon: Icon(Icons.search),text: "search",),
              Tab(icon: Icon(Icons.settings),text: "settings",),
              Tab(icon: Icon(Icons.email),text: "email",),
              Tab(icon: Icon(Icons.contact_mail),text: "contact",),
              Tab(icon: Icon(Icons.person),text: "person",),
              Tab(icon: Icon(Icons.access_alarm),text: "alarm",),
              Tab(icon: Icon(Icons.share),text: "share",),
            ],
          ),
        ),
        body: TabBarView(children: [

          search(),
          settings(),
          email(),
          contact(),
          person(),
          alarm(),
          share(),

        ],),
      ),
    );
  }
}
