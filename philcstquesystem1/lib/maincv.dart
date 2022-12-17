import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const FifthRoute(),

    },
  )); //MaterialApp
}
class FourthRoute extends StatelessWidget {
  const FourthRoute({key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cocktail App',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
    );
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/forgotpw.jpg"), fit: BoxFit.cover)),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              Column(
                children: [
                  const CircleAvatar(

                    radius: 80,
                    backgroundImage: AssetImage('assets/images/check.png'),

                  ),
                  const Text(
                    "Create Successfully",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                const Padding(padding: EdgeInsets.only(top: 100)),
                   TextButton(
                     child: const Text(
                        "Go back to Login",
                     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      onPressed: () {
                     Navigator.pushNamed(context, '/second');
                  },
                   ),
                  ],
               ),
              ])])));
            }
          }