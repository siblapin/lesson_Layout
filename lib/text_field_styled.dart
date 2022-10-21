import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Container(
      padding: const EdgeInsetsDirectional.all(15),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Введите значение',
            helperText: 'Поле для поиска заметок',
            labelText: 'search',
            labelStyle: const TextStyle(color: Colors.purple)),
      ),
    ))));
  }
}
