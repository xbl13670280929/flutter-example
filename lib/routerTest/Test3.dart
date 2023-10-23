import 'package:flutter/material.dart';

// 接收参数方式1
class Test3 extends StatelessWidget {
  const Test3({super.key});

  Widget build(BuildContext context) {
    // 接收参数
    Map<String, String> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Test3-aa',
            ),
            Text("参数x1:${args["x1"]}"),
            Text("参数x2:${args["x2"]}"),
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
