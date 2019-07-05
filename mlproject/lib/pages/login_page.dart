import 'package:flutter/material.dart';


/**
 * 登录页面
 */
class LoginPage extends StatelessWidget {

  // 响应空白处的焦点的Node
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(55),
        child: GestureDetector(
          onTap: () => {

          },
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
              _wrapTap(_loginButton, ()=> {
                print(_nameTextController.text),
                print(_passwordTextController.text)
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _userNameTextField {
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
          controller: _nameTextController,
          decoration: InputDecoration(
            hintText: '用户名',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget get _passwordTextField {
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          controller: _passwordTextController,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: '密码',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

    // 添加点击事件
  Widget _wrapTap(Widget child, void Function() callback) {
    return GestureDetector(
      onTap: () {
        if (callback != null) callback();
      },
      child: child,
    );
  }

  Widget get _loginButton{
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
