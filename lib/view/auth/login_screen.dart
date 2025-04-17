import 'package:ecommerce/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/viewmodel/auth_viewmodel.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  LoginScreen({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text("Signup", style: TextStyle(color: primaryColor)),
                ],
              ),
              SizedBox(height: 50),
              TextFormField(
                onChanged: (value) {
                  controller.email = value;
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),
              TextFormField(
                onChanged: (value) {
                  controller.password = value;
                },
                decoration: InputDecoration(
                  labelText: "Password",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.topRight,
                child: Text("Forget Password?"),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      primaryColor,
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    controller.signInWithEmailAndPassword();
                  },
                  child: Text("SignIn", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 50),
              Text("- OR -"),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  controller.googleSignIn();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/google.svg", width: 20),
                      SizedBox(width: 10),
                      Text("SignIn with Google"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/facebook.svg", width: 20),
                    SizedBox(width: 10),
                    Text("SignIn with Facebook"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
