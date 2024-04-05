import 'package:flutter/material.dart';

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
            children: [Icon(Icons.arrow_back), Text("Order Details")],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey,
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  child: Card(
                    color: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.check),
                            Column(
                              children: [
                                Text("Completed"),
                                Text("Order Completed 24 July 2024")
                              ],
                            ),
                            Icon(Icons.chevron_right)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Order ID"), Text("#524120")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order Date"),
                    Text("20 July 2024, 05:00 PM")
                  ],
                ),
                Card(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          "Purchased Items",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/hi.jpg",
                              width: 48,
                              height: 48,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Blue T-shirt",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Size: L"),
                                Text(
                                  "50.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [Text("Color: Yellow"), Text("Qty: 1")],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/hi.jpg",
                              width: 48,
                              height: 48,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Blue T-shirt",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Size: L"),
                                Text(
                                  "50.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [Text("Color: Yellow"), Text("Qty: 1")],
                            )
                          ],
                        ),
                      ],
                    )),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Shipping Information",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Name"), Text("Jacob Jones")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Phone Number"), Text("Jacob Jones")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Address"), Text("Jacob Jones")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Shipment"), Text("Jacob Jones")],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Payment Information",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment Method"),
                          Text("Cash on Delivery")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
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
