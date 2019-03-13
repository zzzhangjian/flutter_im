import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
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
      Navigator.of(context).pushReplacementNamed("app");
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Text("loading..."),
        ],
      ),
    );
  }
}