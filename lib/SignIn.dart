import 'package:flutter/material.dart'; 
import 'package:couriersystems/widgets/app_button_widget.dart'; 
import 'package:couriersystems/widgets/app_input_textfield_widget.dart'; 
 
class SignIn extends StatefulWidget { 
  const SignIn({super.key}); 
 
  @override 
  State<SignIn> createState() => _SignInState(); 
} 
 
class _SignInState extends State<SignIn> { 
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
            SizedBox( 
              height: 20, 
            ), 
            Padding(padding: EdgeInsets.all(10)), 
            Text( 
              "Enter your Username!!", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700), 
              textAlign: TextAlign.center, 
            ), 
            SizedBox( 
              height: 30, 
            ), 
            AppInputTextfieldWidget( 
                controller: null, title: "Username", hitText: "Name", titleColor: Colors.white,), 
            AppInputTextfieldWidget( 
                controller: null, title: "Password", hitText: "Password", titleColor: Colors.white,), 
            AppButtonWidget( 
              onPressed: () { 
                Navigator.pushNamed(context, "/homescreen"); 
              }, 
              title: "Sign In", 
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