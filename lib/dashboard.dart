import 'package:flutter/material.dart';
import 'package:roadassistance/src/first/page/map.dart';

class DashboardUi extends StatefulWidget {
  const DashboardUi({Key? key}) : super(key: key);

  @override
  State<DashboardUi> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<DashboardUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Road Assistance"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  child: Text("Zero"),
                ),
                SizedBox(
                  height: 200,
                  child: HorizontalListView(),
                ),
                SizedBox(
                  height: 300,
                  child: VerticalListView(),
                ),
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    children: List.generate(5, (index) {
                      return Container(
                        child: Card(
                          color: Colors.amber,
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  List topList = [
    {
      "imgUrl": "http://source.unsplash.com/random/vehicle",
      "title": "kakwa",
      "navIndex": 1
    },
    {
      "imgUrl": "http://source.unsplash.com/random/car",
      "title": "singjamei",
      "navIndex": 2
    },
    {
      "imgUrl": "http://source.unsplash.com/random/nature",
      "title": "nielit",
      "navIndex": 2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MapUi()));
            }),
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  Image.network(
                    '${topList[index]["imgUrl"]}',
                    height: 150,
                  ),
                  Text('${topList[index]["title"]}')
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class VerticalListView extends StatelessWidget {
  List midList = [
    {
      "imgUrl": "http://source.unsplash.com/random/man",
      "title": "name",
      "navIndex": "1"
    },
    {
      "imgUrl": "http://source.unsplash.com/random/bike",
      "title": "yy",
      "navIndex": "2"
    },
    {
      "imgUrl": "http://source.unsplash.com/random/tree",
      "title": "name",
      "navIndex": "3"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: midList.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  Image.network(
                    '${midList[index]["imgUrl"]}',
                    height: 150,
                  ),
                  Text('${midList[index]["title"]}')
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
