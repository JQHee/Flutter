import 'package:flutter/material.dart';


/**
 * 登录页面
 */
class LoginPage extends StatelessWidget {

  InputEdtextNameWiget _userNameTextField = new InputEdtextNameWiget();
  InputEdtextPassWordWiget _passwordTextField = new InputEdtextPassWordWiget();

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
          _userNameTextField,
          SizedBox(height: 20,),
          _passwordTextField,
          SizedBox(height: 30,),
          new LoginButtonWiget(),
        ],
      ),
    );
  }

}

// 输入用户名
class InputEdtextNameWiget extends StatelessWidget {
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

// 输入密码
class InputEdtextPassWordWiget extends StatelessWidget {
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

// 登录按钮
class LoginButtonWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new GestureDetector(
        onTap: () => {
          // 只能通过那几种方式传递事件
        },
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
      ),
    );
  }
}