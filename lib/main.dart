import 'package:flutter/material.dart';
import 'package:rickandmorty_app/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: routes,
      theme: ThemeData.dark(),
    );
  }
}
