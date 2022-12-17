import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/ForRegistrar.dart';
import 'package:portfolio/Certificate.dart';
import 'package:portfolio/Accounting.dart';
import 'package:portfolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Registrar.dart';

// final Uri _url = Uri.parse('https://www.linkedin.com/in/harshit-sahu-1015a0178/?originalSubdomain=in');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [

        const SizedBox(
          height: 50,
          width: double.infinity,
        ),

        const CircleAvatar(

          radius: 95,
          backgroundImage: AssetImage('assets/images/logo.jpg'),

        ),

        const SizedBox(
          height: 18,
          width: double.infinity,
        ),

        const Text(
          'PLEASE CHOOSE YOUR TRANSACTION',
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
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
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Registrar()
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
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Registrar',
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
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Accounting()
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
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Accounting',
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
                  height: 180,
                ),

                const Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton.icon(
                  onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeRoute()));
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

  void _launchUrl(String u) async {
    //final Uri _url = Uri.parse(u);
    log('Clicked!');
    if (!await launchUrl(Uri.parse(u))) {
      log('andar!');
      throw 'Could not launch $u';
    }else{
      log('Not done!');
    }
    log('end');
  }


}