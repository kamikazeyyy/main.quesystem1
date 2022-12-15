import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/Certificates.dart';
import 'package:portfolio/Skills.dart';
import 'package:portfolio/main.dart';
import 'AboutMe.dart';

// final Uri _url = Uri.parse('https://www.linkedin.com/in/harshit-sahu-1015a0178/?originalSubdomain=in');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          const SizedBox(
            height: 45,
            width: double.infinity,
          ),

          const CircleAvatar(

            radius: 85,
            backgroundImage: AssetImage('assets/images/avatar5.png'),

          ),

          const SizedBox(
            height: 18,
            width: double.infinity,
          ),

          const Text(
            'Marvin Bruan',
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  'IT Student',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 25,
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
            height: 25,
            width: double.infinity,
          ),

          Expanded(
            child: SingleChildScrollView(

              scrollDirection: Axis.vertical,

              child: Column(

                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const AboutMe()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.man,
                              color: Colors.greenAccent,
                            ),
                            title: Text(
                              'About Me',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Skills()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.stacked_line_chart_outlined,
                              color: Colors.greenAccent,
                            ),
                            title: Text(
                              'Skills',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Education()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.grade,
                              color: Colors.greenAccent,
                            ),
                            title: Text(
                              'Education',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Certificates()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.personal_injury_outlined,
                              color: Colors.greenAccent,
                            ),
                            title: Text(
                              'Certificates',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeRoute()));
                    },
                    icon: const Icon(
                      // <-- Icon
                      Icons.logout,
                    ),
                    label: const Text('Logout'), // <-- Text
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.redAccent,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                    ),
                  ),
                ],
              ),


            ),
          ),
        ],
      ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=>  Page2())
      //   );
      //   }
      // )

    );
  }
}
