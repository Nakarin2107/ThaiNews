// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:homework5/login.dart'
import 'package:homework5/my_home_page.dart';
import 'package:homework5/test.dart';
import 'package:homework5/thai%20news.dart';
// import 'package:homework5/welcome.dart';
// import 'package:homework5/proflie.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Thai News Api',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Welcome'),
            onTap: () {
              Get.to(MyHomePage());
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Get.to(TestLogin());
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper_rounded),
            title: Text('ThaiNews'),
            onTap: () {
              Get.to(ThaiNews());
            },
          ),
        ],
      ),
    );
  }
}
