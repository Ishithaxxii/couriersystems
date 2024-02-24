
import 'package:flutter/material.dart';
import 'package:couriersystems/widgets/app_button_widget.dart';
import 'package:couriersystems/widgets/app_input_textfield_widget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<CreateAccount> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Express Courier Systems"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sign up to continue",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                ),
                AppInputTextfieldWidget(
                    controller: _namecontroller,
                    title: "Name",
                    hitText: "User name", titleColor: Colors.white,),
                SizedBox(
                  height: 22,
                ),
                AppInputTextfieldWidget(
                    title: "Phone Number",
                    hitText: "+91 XXXXXXXXXXX", controller: null, titleColor: Colors.white,),
                AppInputTextfieldWidget(
                    controller: _emailcontroller,
                    title: "Email Address",
                    hitText: "username@gmail.com", titleColor: Colors.white,),
                SizedBox(
                  height: 22,
                ),
                AppInputTextfieldWidget(
                    controller: _passwordController,
                    title: "Password",
                    hitText: "enter password", titleColor: Colors.white,),
                SizedBox(
                  height: 51,
                ),
                AppButtonWidget(
                  onPressed: () {
                    Navigator.pushNamed(context, "/loginScreen");
                  },
                  title: "Create Account",
                  titleColor: Colors.white,
                  buttonBackgroundColor: const Color.fromRGBO(90, 90, 90, 90),
                  buttonBorderColor: Colors.white,
                ),
              ],
            ),
          )),
    );
  }
}
