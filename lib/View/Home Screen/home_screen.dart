import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: TabBar(
                dividerHeight: 0,
                indicator: BoxDecoration(color: Colors.black),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 5,
                unselectedLabelColor: Colors.blue,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: "Settings",
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                    text: "search",
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orange,
            ),
          ]),
        ));
  }
}
