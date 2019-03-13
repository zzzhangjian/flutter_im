import 'package:flutter/material.dart';
import 'chat/message_page.dart';
import 'contacts/contacts.dart';
import 'personal/personal.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App>{
  var _currentIndex = 0;

  MessagePage message;

  Contacts contacts;

  Personal personal;

  _popupMenuItem(String title,{String imagePath,IconData icon}){
    return PopupMenuItem(
        child: Row(
          children: <Widget>[
            imagePath != null ? Image.asset(
                  imagePath,
                  width:32.0,
                  height:32.0)
                :SizedBox(
                   width: 32.0,
                   height: 32.0,
                   child: Icon(
                    icon,
                    color: Colors.white,
                   ),
                 ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
    );
  }

  _currentPage(){
    switch(_currentIndex){
      case 0:
        if(message == null) {
          message = new MessagePage();
        }
        return message;
      case 1:
        if(contacts == null) {
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if(personal == null) {
          personal = new Personal();
        }
        return personal;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的钱包"),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 30.0,right: 20.0),
              child: GestureDetector(
                onTap: (){
                  showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                      items: <PopupMenuEntry>[
                        _popupMenuItem('发起会话',
                          imagePath:'images/icon_menu_group.png',
                        ),
                        _popupMenuItem('添加好友',
                          imagePath:'images/icon_menu_addfriend.png',
                        ),
                        _popupMenuItem('联系客服',
                          icon: Icons.person,
                        ),
                      ]
                  );
                },
                child: Icon(Icons.add),
              ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index){
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            title: Text(
              '首页',
              style: TextStyle(color: _currentIndex==0?Color(0xFF46c01b):Color(0xff999999)),
            ),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.contacts),
              title: Text(
                '好友',
                style: TextStyle(color: _currentIndex==1?Color(0xFF46c01b):Color(0xff999999)),
              ),
              icon: Icon(Icons.contacts),
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings),
              title: Text(
                '我的',
                style: TextStyle(color: _currentIndex==2?Color(0xFF46c01b):Color(0xff999999)),
              ),
//              icon: _currentIndex==2?Image.asset('images/setting_pressed.png',width: 32.0,height: 28.0,):Image.asset('images/setting_nomal.png',width: 32.0,height: 28.0,)
              icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: _currentPage(),

    );
  }
}