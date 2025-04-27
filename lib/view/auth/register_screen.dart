import 'package:ecommerce/core/viewmodel/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
  RegisterScreen({super.key});
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 20),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Signup", style: TextStyle(fontSize: 25)),
              SizedBox(height: 50),
              TextFormField(
                onChanged: (value) {
                  controller.name = value;
                },
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),

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
                    controller.registerWithEmailAndPassword();
                  },
                  child: Text("SignUn", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
