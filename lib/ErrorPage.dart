import 'package:flutter/material.dart';

// 无状态
class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      // 中间主文本
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("页面不存在"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "我是返回值"),
              child: Text("返回"),
            ),
          ],
        ),
      ),
    );
  }
}