import "package:flutter/material.dart";

void main() {
  runApp(allone());
}

class allone extends StatelessWidget {
  const allone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
          top: BorderSide(color: Colors.purple, width: 5),
        ),
      ),
      tabs: <Widget>[
        Tab(icon: Icon(Icons.comment), text: "Comments"),
        Tab(icon: Icon(Icons.computer), text: " News "),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myBar.preferredSize.height),
                child: Container(color: Colors.amber, child: myBar)),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
