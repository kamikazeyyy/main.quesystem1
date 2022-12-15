import 'package:portfolio/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/maincv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondRoute(),
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/g1.jpg"),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                const Padding(padding: EdgeInsets.only(top: 80)),
                                const Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Enter Your Account',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),


                                      // ElevatedButton(
                                      //   onPressed: _launchUrl, child: const Text(
                                      //     'Press Me',
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Welcome back ! Login with your credentials",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 15, left: 10, right: 10),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black26),
                                    hintText: "Email or Phone Number",
                                    border: OutlineInputBorder()),
                                // ignore: body_might_complete_normally_nullable
                                validator: (value) {
                                  if (RegExp(emailRegex).hasMatch(value!)) {
                                  } else if (value.isEmpty) {
                                    return "Please insert your email";
                                  } else {
                                    return "There's something wrong";
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 15, left: 10, right: 10),
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black26),
                                    hintText: "Password",
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Field cannot be empty";
                                  } else if (value.length < 5) {
                                    return "Must be at least 6 chars";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            TextButton(
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const ForgotRoute()));
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(60),
                              child: Container(
                                padding: const EdgeInsets.only(top: 3, left: 3),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => const FourthRoute()));
                                    } else {
                                      return;
                                    }
                                  },
                                  color: Colors.lightBlueAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Text(
                                    "Enter",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account?"),
                                TextButton(
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/third');
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ],
  );
}
