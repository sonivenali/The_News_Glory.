import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff311b92),
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 8,bottom: 8),
              child: Text("The News Glory",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            buildHomeButton("World"),
            buildHomeButton("Technology"),
            buildHomeButton("Science"),
            buildHomeButton("Global Development"),
            buildHomeButton("Life Style"),
            buildHomeButton("Media Network"),
            buildHomeButton("Society"),
            buildHomeButton("Weather"),
            buildHomeButton("Sports"),
            buildHomeButton("TV & Radio"),
            buildHomeButton("Guardian Professional"),
            buildHomeButton("Games"),
            buildHomeButton("Art & Design"),
            buildHomeButton("Environment"),
            buildHomeButton("Healthcare Network"),
            buildHomeButton("Jobs & Advice"),
            buildHomeButton("Music"),
            buildHomeButton("News"),
            buildHomeButton("Extra"),
            buildHomeButton("leeds"),
            buildHomeButton("Info"),
            buildHomeButton("Help"),
          ],
        ),
      ),
    );
  }

  Padding buildHomeButton(
    String name,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 8, left: 12),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.grey[800],fontSize: 15),
          ),
        ],
      ),
    );
  }
}
