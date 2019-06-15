import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wanandroid_ngu/app.dart';

//加载页面
class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {

  @override
  void initState(){
    super.initState();
    //在加载页面停顿2秒
    new Future.delayed(Duration(seconds: 2),(){
      _getHasSkip();
    });
  }

  // 判断是否需要跳过闪屏页，如果已经在sharedpreference存在则跳过 并进入app页面 ，否则进入闪屏页面
  void _getHasSkip ()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSkip = prefs.getBool("hasSkip");
    if(hasSkip==null||!hasSkip){
      Navigator.of(context).pushReplacementNamed("splash");
    }else {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(
              builder: (context) => App()),
              (route) => route == null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          //加载页面居中背景图 使用cover模式
          Image.asset("images/loading.png",fit: BoxFit.cover,),
        ],
      ),
    );
  }

}