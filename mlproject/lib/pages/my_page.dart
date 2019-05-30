import 'package:flutter/material.dart';
import 'package:mlproject/widget/webview.dart';

/// 我的
class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyPageState();
  }

}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Scaffold(
        body: WebView(
          url: 'https://m.ctrip.com/webapp/myctrip/',
          hideAppBar: true,
          backForbid: true,
          statusBarColor: '4c5bca',
    ));
  }

}