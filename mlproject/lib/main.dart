import 'package:flutter/material.dart';
import 'package:mlproject/navigator/tab_navigator.dart';
import 'package:mlproject/pages/login_page.dart';

void main() => runApp(MyApp());

/// 程序入口文件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter之旅',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
