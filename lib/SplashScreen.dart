import 'package:flutter/material.dart';
import 'package:couriersystems/widgets/app_button_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/CargoLogo.png',
                width: 300,
                height: 300,
                
                ),
              const Text("Welcome to Cargo and Express Courier Systems",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 3,
              ),
              const Text(
                "Click here to Continue your journey!!!!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700,
                color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              AppButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, "/loginScreen");
                },
                title: "Continue!!",
                titleColor: Colors.black,
                buttonBackgroundColor: Color.fromARGB(90, 90, 90, 90),
                buttonBorderColor: Colors.black,
              ),
            ],
          ),
        ));
  }
}
