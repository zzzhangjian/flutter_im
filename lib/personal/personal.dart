import 'package:flutter/material.dart';
import 'package:flutter_im/common/touch_callback.dart';

class Personal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PersonalState();
  }
}

class PersonalState extends State<Personal>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 12.0,right: 15.0),
                      child: Image.asset('images/yixiu.jpeg',width: 70.0,height: 70.0,),
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '一休',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF353535),
                              ),
                            ),
                            Text(
                              '账户 yixiu',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFFa9a9a9),
                              ),
                            ),
                          ],
                        ),
                    ),
                    Container(

                    )
                  ],
                ),
                onPressed: (){}),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}