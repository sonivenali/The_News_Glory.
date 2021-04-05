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
    tabcontroller = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 12),
              child: Image.asset(
                "assets/appicon.png",
                height: 50,
                width: 50,
              ),
            )
          ],
          backgroundColor: Color(0xff311b92),
          title: Text(
            "The News Glory",
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
        children: [
          NewsTab("business"),
          NewsTab("travel"),
          NewsTab("community"),
          NewsTab("education"),
          NewsTab("culture"),
          NewsTab("fashion"),
          NewsTab("money"),
          NewsTab("film"),
          NewsTab("society"),
        ],
        controller: tabcontroller,
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      isScrollable: true,
      unselectedLabelColor: Colors.blueGrey,
      labelColor: Colors.black,
      tabs: [
        Tab(
          text: "Business",
        ),
        Tab(
          text: "Travel",
        ),
        Tab(
          text: "Community",
        ),
        Tab(
          text: "Education",
        ),
        Tab(
          text: "Culture",
        ),
        Tab(
          text: "Fashion",
        ),
        Tab(
          text: "Money",
        ),
        Tab(
          text: "Film",
        ),
        Tab(
          text: "Society",
        ),
      ],
      controller: tabcontroller,
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }
}
