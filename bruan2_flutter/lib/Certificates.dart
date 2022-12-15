// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Certificates extends StatelessWidget {
  const Certificates ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text(
          'Certificates',
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'NC-II',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(45, 5, 20, 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Computer System Servicing\n Philippine College of Science and Technology',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      )

    );
    
  }
}