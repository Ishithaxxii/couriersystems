import 'package:flutter/material.dart';

class CustomerQuery extends StatelessWidget {
  const CustomerQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Hi Kushal",
          style: TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w500,
          ),
          ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("LOL.jpg",
              height: 300,
              width: 600,
              ),
            ),
            const Text("Dobbey ra Kushal")
          ],  
        ),
      ),
    );
  }
}
