import 'package:flutter/cupertino.dart';
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
          title: Row(
        children: [
          Icon(Icons.arrow_back),
          Icon(Icons.shopping_cart),
          Icon(Icons.notification_add)
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("assets/hi.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(alignment: Alignment.topLeft, child: Text("8.6")),
                Icon(Icons.heat_pump_rounded)
              ],
            ),
            Text(
                "BARDI SMART LIGHT BULB LAMP BOHLAM LED WIFI RGBWW 12W 12WATT HOME IOT"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.star_rate),
                Text("354"),
                Text("540 Sale"),
                Icon(Icons.location_on),
                Text("Brooklyn")
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Variant",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Align(alignment: Alignment.topLeft, child: Text("Size: XS")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("XS"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("XS"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("XS"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("XS"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("XS"),
                )
              ],
            ),
            Align(alignment: Alignment.topLeft, child: Text("Color: Red")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Red"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Black"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Green"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("White"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Blue"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.chat_rounded),
                ElevatedButton(
                    onPressed: () {}, child: Text("Add to Shopping Cart"))
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
      home: StatelessWidget1(title: "Scaffold Widget"),
    );
  }
}
