import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatefulWidget {
  HomeUser({Key key}) : super(key: key);

  @override
  _HomeUserState createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [Text('This is homepage user')],
          ),
        ),
      ),
    );
  }
}
