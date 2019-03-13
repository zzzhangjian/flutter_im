import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class LoadingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoadingPageState();
  }
}

class _LoadingPageState extends State<LoadingPage>{
  int duration = 3;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: duration),(){
      print("loading page ...");
     Navigator.of(context).pushReplacementNamed("first_page");
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.network("https://img.alicdn.com/tfs/TB1YldEBzTpK1RjSZKPXXa3UpXa-1818-798.jpg"),
        ],
      ),
    );
  }
}