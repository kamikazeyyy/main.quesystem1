import 'package:flutter/material.dart';
import 'package:portfolio/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/second': (context) => const SecondRoute(),
      '/forgot': (context) => const ForgotRoute(),
      '/Six': (context) => const SixRoute(),
      '/Seven': (context) => const SevenRoute(),
    },
  )); //MaterialApp
}

class ForgotRoute extends StatelessWidget {
  const ForgotRoute({key}) : super(key: key);
// This widget is the root of your application.
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
                  const Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CircleAvatar(

                    radius: 80,
                    backgroundImage: AssetImage('assets/images/forgot.png'),

                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter your registered email",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    makeInput(
                      label: "Email",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black))),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SixRoute()));
                    },
                    color: Colors.greenAccent[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
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
        ),
      );
  }
}


class SixRoute extends StatelessWidget {
  const SixRoute({key}) : super(key: key);
// This widget is the root of your application.
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
                    backgroundImage: AssetImage('assets/images/forgot.png'),

                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter your new password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    makeInput(
                      label: "Password",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black))),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SevenRoute()));
                    },
                    color: Colors.greenAccent[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
                  ],
        ),
      ),
    );
  }
}

class SevenRoute extends StatelessWidget {
  const SevenRoute({key}) : super(key: key);
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
                          "New password set successfully",
                          style: TextStyle(
                            fontSize: 25,
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