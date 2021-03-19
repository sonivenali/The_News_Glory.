import 'package:flutter/material.dart';
import 'package:news_daily_app/screens/news_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff311b92),
          leading: Icon(Icons.menu),
          title: Text(
            "Daily News",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        body: Column(
          children: [
            buildTabBar(),
            buildTabView(),
          ],
        ));
  }

  Widget buildTabView() {
    return Expanded(
            child: TabBarView(
              children: [NewsTab("business"), NewsTab("travel")],
              controller: tabcontroller,
            ),
          );
  }

  TabBar buildTabBar() {
    return TabBar(
            unselectedLabelColor: Colors.blueGrey,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "Business",
              ),
              Tab(
                text: "Travel",
              )
            ],
            controller: tabcontroller,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
          );
  }
}
