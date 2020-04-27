import 'package:flutter/material.dart';
import 'package:wine_app/ui/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: 'Cormorant Garamond'),
      routes: {
        '/home' : (BuildContext context) => HomePage()
      },
      initialRoute: '/home',
    );
  }
}
