// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Skills',
          ),
        ),
        body: Column(children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '•',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 35, 10, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• :',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '• ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '•',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ]));
  }
}
