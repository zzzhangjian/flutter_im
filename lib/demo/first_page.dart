import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(onPressed: ()=>{
              Navigator.of(context).pushNamed("second_page")
           },
          child: Text("跳转到第二页")
      ),
    );
  }
}




