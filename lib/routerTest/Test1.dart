import 'package:flutter/material.dart';

// 无状态
class Test1 extends StatelessWidget {
  const Test1({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      // 中间主文本
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Test1:1',
            ),
            const Text(
              'Test1:2',
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