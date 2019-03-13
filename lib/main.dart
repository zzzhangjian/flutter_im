import 'package:flutter/material.dart';
import 'package:flutter_im/loading.dart';
import 'package:flutter_im/search.dart';
import 'app.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(IMApp());

class IMApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '广告页面',
      debugShowCheckedModeBanner: false,
      theme: mDefaultTheme,
      home: LoadingPage(),
      routes: <String,WidgetBuilder>{
        "app":(BuildContext context) => App(),
        "/friends":(_) => WebviewScaffold(
          url: "指定的url",
          appBar: AppBar(
            title: Text("指定的I奥体"),
          ),
          withZoom: true,
          withLocalStorage: true,
        ),
        "search":(BuildContext context) => Search(),
      }
    );
  }

  final ThemeData mDefaultTheme = new ThemeData(
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Colors.purpleAccent,
  );
}



