import 'package:couriersystems/DetailsPage.dart';
import 'package:couriersystems/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Express Courier Systems'),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  Text('Enter your Parcel Id', style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                ],
              ),
            ),
            ParcelIDInput(),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to details page when button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsPage()),
                );
              },
              child: const Text('Track Parcel'),
              
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: AppButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, "/customer");
                },
                title: "Give a Review!!",
                titleColor: Colors.white,
                buttonBackgroundColor: Color.fromARGB(90, 90, 90, 90),
                buttonBorderColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParcelIDInput extends StatefulWidget {
  @override
  _ParcelIDInputState createState() => _ParcelIDInputState();
}

class _ParcelIDInputState extends State<ParcelIDInput> {
  final TextEditingController _parcelIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _parcelIdController,
      decoration: const InputDecoration(
        hintText: 'Enter Parcel ID',
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(),
      ),
    );
  }
  

  @override
  void dispose() {
    _parcelIdController.dispose();
    super.dispose();
  }
}
