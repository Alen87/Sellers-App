import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              "images/seller.png",
              height: 270,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  data: Icons.email,
                  controller: emailController,
                  hintText: "Email",
                  isObsecure: false,
                ),
                CustomTextField(
                  data: Icons.lock,
                  controller: passwordController,
                  hintText: "Password",
                  isObsecure: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () => print("clicked"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              padding:
              const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),),
            child: const Text(
              "Login",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),

        ],
      ),
    );
  }
}
