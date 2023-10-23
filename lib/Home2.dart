import 'package:flutter/material.dart';

// 无状态
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      // 中间主文本
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '第1行文字:b',
            ),
            const Text(
              '第2行文字:b',
            ),
            TextButton(
              child: Text("to test1-b"),
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "/test1");
              },
            ),
            TextButton(
              child: Text("to test2-b"),
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "/test2");
              },
            ),
            TextButton(
              child: Text("to test3:传参"),
              onPressed: () {
                Navigator.pushNamed(context, "/test3",
                    arguments: {'x1': "ab", 'x2': "cd"});
              },
            ),
            TextButton(
              child: Text("to 不存在的路由 /test7"),
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "/test7");
              },
            ),
            TextButton(
              child: Text("to 需要登录的路由"),
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "/login2");
              },
            ),
          ],
        ),
      ),
    );
  }
}
