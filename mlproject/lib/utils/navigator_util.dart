import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigatorUtil {

  /**
   * 导航：跳转到下一个页面
   */
  static push(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

}