import 'package:flutter/material.dart';


/**
 * 登录页面
 */
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(55),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Member Login',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('会员登录',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 25,
                  height: 1.5,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),

          SizedBox(height: 120),
          new inputEdtextNameWiget(),
          SizedBox(height: 20,),
          new inputEdtextPassWordWiget(),
          SizedBox(height: 30,),
          new loginButtonWiget(),

        ],
      ),
    );
  }

}

//输入用户名
class inputEdtextNameWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            hintText: '用户名',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
//输入密码
class inputEdtextPassWordWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            hintText: '密码',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
//登录按钮
class loginButtonWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(2, 15, 2, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepOrangeAccent,
        ),
        alignment: Alignment.center,
        child: Text(
          '登录',
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white70),
        )
      ),
    );
  }
}