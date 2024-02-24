import 'package:flutter/material.dart';
import 'package:couriersystems/widgets/app_button_widget.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(90, 90, 90, 90),
        centerTitle: true,
        title: const Text(
          "Welcome to Express Courier Systems!!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/LOL.jpg",
              height: 300,
              width: 600,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Continue your journey here!!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            AppButtonWidget(
              onPressed: () {
                HapticFeedback.vibrate();
                Navigator.pushNamed(context, "/createaccount");
              },
              title: "Create Account",
              titleColor: Colors.white,
              buttonBackgroundColor: Color.fromARGB(90, 90, 90, 90),
              buttonBorderColor: Colors.transparent,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, "/signin");
              },
              title: "Sign In as Customer",
              titleColor: Colors.white,
              buttonBackgroundColor: Color.fromARGB(90, 90, 90, 90),
              buttonBorderColor: Colors.transparent,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, "/adminsignin");
              },
              title: "Sign In as Administrator",
              titleColor: Colors.white,
              buttonBackgroundColor: Color.fromARGB(90, 90, 90, 90),
              buttonBorderColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
