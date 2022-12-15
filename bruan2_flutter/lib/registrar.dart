import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search App Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Icon cussicon = Icon(Icons.search);
  //we create a widget here not directly text like icon
  //above because text will not work like icon
  // here we can only change style or other
  //hence we use widget here
  Widget cusSearchBar = Text("Search Bar",
    style: TextStyle(
      fontFamily: 'title',
      fontWeight: FontWeight.bold,
      fontSize: 30.00,



    ),


  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu), onPressed: (){}),
        backgroundColor: Colors.red,
        title: cusSearchBar,
        //title spacing gives distance between title and leading here
        titleSpacing: 20.0,
        actions: <Widget>[
          //inkwell is used to change size
          // or distance or other limitization
          //on the icon or others
//          InkWell(
//            //instead of onpressed
//            onTap: (){},
//            child: SizedBox(
//              width: 40.0,
//              child: Icon(
//                Icons.search,
//              ),
//            ),
//          ),
          IconButton(icon: cussicon, onPressed: (){
            setState(() {
              if(this.cussicon.icon == Icons.search){
                this.cussicon = Icon(Icons.cancel);
                this.cusSearchBar = TextField(
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"Search"

                  ),
                  style: TextStyle(

                      fontSize: 16.0
                  ),
                );

              }else{
                this.cussicon = Icon(Icons.search);
                this.cusSearchBar = Text("Search Bar",
                  style: TextStyle(
                    fontFamily: 'title',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.00,

                  ),


                );
              }
            });
          }),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
//to increase size of appbar
//        bottom: PreferredSize(
//            child: Container(),
//            preferredSize: Size(30.00,30.00)),
        //elevation elevates  appbar over screen
        // elevation: 30.0,
      ),
    );
  }
}



