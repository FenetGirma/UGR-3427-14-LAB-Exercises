import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(LAB1());
}

class StatelessWidget1 extends StatelessWidget {
  final String title;

  StatelessWidget1({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 30, backgroundImage: AssetImage("assets/hi.jpg")),
                Row(
                  children: [
                    Text("Robert Steven"),
                    Row(
                      children: [Icon(Icons.car_rental)],
                    )
                  ],
                ),
                Icon(Icons.logout)
              ],
            ),
            Center(
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Online | Battery: 90%")],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.map), Text("Map"), Text("All Devices")],
                ),
                Column(
                    children: [Icon(Icons.location_on), Text("Live Location")]),
                Column(children: [
                  Icon(Icons.history_toggle_off),
                  Text("History Location")
                ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.map), Text("Se Geoofence")],
                ),
                Column(
                    children: [Icon(Icons.location_on), Text("Detail Info")]),
                Column(children: [
                  Icon(Icons.map),
                  Text("Map"),
                  Text("All Devices")
                ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.map), Text("Map"), Text("All Devices")],
                ),
                Column(
                    children: [Icon(Icons.location_on), Text("Live Location")]),
                Column(children: [
                  Icon(Icons.map),
                  Text("Map"),
                  Text("All Devices")
                ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.map), Text("Map"), Text("All Devices")],
                ),
                Column(
                    children: [Icon(Icons.location_on), Text("Live Location")]),
                Column(children: [
                  Icon(Icons.map),
                  Text("Map"),
                  Text("All Devices")
                ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.map), Text("Map"), Text("All Devices")],
                ),
                Column(
                    children: [Icon(Icons.location_on), Text("Live Location")]),
                Column(children: [
                  Icon(Icons.map),
                  Text("Map"),
                  Text("All Devices")
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LAB1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatelessWidget1(title: "Tracker"),
    );
  }
}
