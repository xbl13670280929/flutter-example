import 'package:flutter/material.dart';
import './Home2.dart';
import './Login.dart';
import './ErrorPage.dart';
import './routerTest/Test1.dart';
import './routerTest/Test2.dart';
import './routerTest/Test3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用名称
      title: 'AppName22',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute:(RouteSettings settings) {
        final routeName = settings.name;
        return MaterialPageRoute(builder: (context) {
          // 需要登录
          if(routeName == '/login2') {
            return Login();
          }
          return ErrorPage();//默认返回404
        });
      },
      routes: {
        "/": (context) => MyHomePage(), //注册首页路由
        "/login": (context) => Login(),
        "/test1": (context) => Test1(),
        "/test2": (context) => Test2(),
        "/test3": (context) => Test3(),//路由传参
      },
    );
  }
}
