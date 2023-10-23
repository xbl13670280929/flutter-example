import 'package:flutter/material.dart';

// 无状态
class Login extends StatelessWidget {
  const Login({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      // 中间主文本
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login:-a',
            ),
            const Text(
              'Login:2-b',
            ),
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
