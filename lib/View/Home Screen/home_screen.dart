import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade800,
            title: Text("WhatsApp"),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              )
            ],
            bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera),
                  ),
                  Tab(
                    text: "CHAT",
                  ),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "CALLS",
                  )
                ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("camera screen"),
            ),
            Center(
              child: Text("chat screen"),
            ),
            Center(
              child: Text("status screen"),
            ),
            Center(
              child: Text("calls screen"),
            ),
          ]),
        ));
  }
}
