import 'package:appempreender/View/login_view.dart';
import 'package:appempreender/routes/AppRoutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        AppRouter.LOGIN_VIEW: (_) => LoginPage(),
      },
    );
  }
}
