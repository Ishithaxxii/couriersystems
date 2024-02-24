import 'package:flutter/material.dart';
import 'package:couriersystems/widgets/app_button_widget.dart';
import 'package:couriersystems/widgets/app_input_textfield_widget.dart';

class AdminSignIn extends StatefulWidget {
  const AdminSignIn({super.key});

  @override
  State<AdminSignIn> createState() => _SignInState();
}

class _SignInState extends State<AdminSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Express Courier Systems!!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(left: 25, right: 25)),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter your Username!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,
              color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            AppInputTextfieldWidget(
                controller: null, title: "Admin Username", hitText: "Name", titleColor: Colors.white,),
            AppInputTextfieldWidget(
                controller: null, title: "Admin Password", hitText: "Password", titleColor: Colors.white,),
            AppButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, "/AdminHomePage");
              },
              title: "Admin Sign In",
              titleColor: Colors.white,
              buttonBackgroundColor: Color.fromRGBO(90, 90, 90, 90),
              buttonBorderColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
