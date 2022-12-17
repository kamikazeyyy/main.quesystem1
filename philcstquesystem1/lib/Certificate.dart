// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Certificate extends StatelessWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text(
          'Certificate',
        ),
      ),

      body: Column(
        children: [ 
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'NATIONAL CERTIFICATE II:',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '1. Computer System Services',
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
                '',
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