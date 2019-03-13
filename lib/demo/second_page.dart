import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(onPressed: ()=>{
            Navigator.of(context).pushNamed("first_page")
        },
        child: Text("跳转到第一页")
    ),
    );
  }
}




