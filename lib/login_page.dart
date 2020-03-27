import 'package:flutter/material.dart';
//import 'package:flutter_kakao_login/flutter_kakao_login.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            heightFactor: .4,
            alignment: Alignment.topCenter,
//            child: Image.asset("assets/login_image.jpg", fit: BoxFit.cover),
          ),
          FractionallySizedBox(
              heightFactor: .7,
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 5.0),
                          blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                        ),
                        TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFe5e5e5))),
                              suffixIcon: Icon(Icons.person),
                              hintText: "아이디"),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 2.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFe5e5e5), width: 2.0)),
                              suffixIcon: Icon(Icons.person),
                              hintText: "비밀번호"),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50.0,
                            color: Color(0xFF00a651),
                            child: Text(
                              "누르지 마",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50.0,
                            color: Color(0xFF00a651),
                            child: Text(
                              "카카오 로그인(안되네)",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {
//                              FlutterKakaoLogin().logIn();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50.0,
                            color: Color(0xFF00a651),
                            child: Text(
                              "네이버 로그인",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {
                              FlutterNaverLogin.logIn();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50.0,
                            color: Color(0xFF00a651),
                            child: Text(
                              "페이스북 로그인",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {
                              FacebookLogin().logIn(['email']);
                            },
                          ),
                        ),
//                        FlatButton(
//                          child: Text(
//                            "Forgot Password",
//                            style: TextStyle(
//                                color: Colors.blueAccent, fontSize: 18),
//                          ),
//                          onPressed: () {},
//                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
