import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showInformation = false; // Variable to track whether to show information

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Update the state when the button is pressed
                setState(() {
                  // Toggle the value of showInformation
                  showInformation = !showInformation;
                });
              },
              child: Text('Toggle Information'),
            ),
            SizedBox(height: 20),
            // Display information based on the value of showInformation
            if (showInformation)
              Text(
                'Here is the information you want to display.',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
