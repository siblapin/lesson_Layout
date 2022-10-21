import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var one = NameInt();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ListView.separated(
      itemBuilder: ((context, index) {
        return Container(
          child: Text(one[index].toString()),
        );
      }),
      separatorBuilder: ((context, index) => const Divider()),
      itemCount: one.length,
    )));
  }
}

NameInt() {
  var name = [];
  for (int i = 1; i < 30; i++) {
    name.add(i);
  }
  return name;
}
