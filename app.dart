/*
*
* 21500344 서찬솔, 21600062 김미소
* v0.8 app.dart
* 페이지 목록 관리.
*
*/

import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class MoaMoaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoaMoa',
      home: HomePage(),
      initialRoute: '/login',
      routes: {
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}
