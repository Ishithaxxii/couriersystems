import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with actual data fetched based on the parcel ID
    String username = 'John Doe';
    String orderType = 'Express';
    String orderStatus = 'In Transit';
    double distance = 10.5; // Distance in kilometers
    int estimatedTime = 45; // Estimated time in minutes

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Express Courier Systems'),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username: $username', style: TextStyle(color: Colors.white)),
            Text('Order Type: $orderType', style: TextStyle(color: Colors.white)),
            Text('Order Status: $orderStatus', style: TextStyle(color: Colors.white)),
            Text('Distance: $distance km', style: TextStyle(color: Colors.white)),
            Text('Estimated Time: $estimatedTime minutes', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
