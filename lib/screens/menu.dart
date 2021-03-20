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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHomeButton(
            "World",
          ),

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
          buildHomeButton("games"),
          buildHomeButton("food"),
        ],
      ),
    );
  }

  Padding buildHomeButton(
    String name,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
