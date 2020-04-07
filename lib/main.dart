import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:taozhao/index/indexPage.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.green);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,
            textTheme: TextTheme(
                subhead: TextStyle(textBaseline: TextBaseline.alphabetic))),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //初始化屏幕适配方案
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);

    return MainPageWidget();
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  _MainPageWidgetState createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  var _tabIndex = 0;

  var _pageList = [IndexPage(), MessagePage(), SuggestPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pageList[_tabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: getImage('assets/images/home.png'),
              activeIcon: getImage('assets/images/home_on.png'),
              title: getBottomText("首页")),
          BottomNavigationBarItem(
              icon: getImage('assets/images/message.png'),
              activeIcon: getImage("assets/images/message_on.png"),
              title: getBottomText("消息")),
          BottomNavigationBarItem(
              icon: getImage('assets/images/permit.png'),
              activeIcon: getImage("assets/images/permit_on.png"),
              title: getBottomText("推荐")),
          BottomNavigationBarItem(
              icon: getImage('assets/images/ucenter.png'),
              activeIcon: getImage("assets/images/ucenter_on.png"),
              title: getBottomText('我的'))
        ],
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Widget getImage(String path) {
    return Image.asset(path, width: 24.0, height: 24.0);
  }

  Widget getBottomText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class SuggestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
