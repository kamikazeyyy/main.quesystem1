import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
    },
  )); //MaterialApp
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return const MaterialApp(
  title: 'Portfolio',
  // theme: ThemeData(
  //   primarySwatch: Colors.blue,
  // ),
  home: HomePage(),
  );
  }
  }

