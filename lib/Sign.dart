import 'package:flutter/material.dart';
import 'package:couriersystems/widgets/app_button_widget.dart';

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
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          "Express Courier Systems!!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                  height: 20,
                ),
            Text(
              "Enter your Username!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                  height: 30,
                ),
            AppButtonWidget(
                  onPressed: () {},
                  title: "Username",
                  titleColor: Colors.white,
                  buttonBackgroundColor: Color.fromRGBO(90, 105, 235, 1),
                  buttonBorderColor: Colors.transparent,
                ),
                SizedBox(
                  height: 10,
                ),
            AppButtonWidget(
                  onPressed: () {},
                  title: "Sign In",
                  titleColor: Colors.white,
                  buttonBackgroundColor: Color.fromRGBO(90, 105, 235, 1),
                  buttonBorderColor: Colors.transparent,
                ),
          ],
        ),
      ),
    );
  }
}
