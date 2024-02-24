import 'package:couriersystems/UsersCargo.dart';
import 'package:flutter/material.dart';

class Details_page extends StatelessWidget {
  const Details_page({super.key, required this.userCargo});
  final Datum userCargo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Express Courier Systems'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 200,
                backgroundImage: NetworkImage(userCargo.orderImage),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  userCargo.orderType,
                  style: const TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        ));
  }
}
