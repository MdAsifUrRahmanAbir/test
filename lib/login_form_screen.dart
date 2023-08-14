import 'package:flutter/material.dart';

import 'basic_widget/password_input_widget.dart';
import 'basic_widget/primary_text_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();

  final emailController = TextEditingController();

  final String imageSrc = "https://previews.123rf.com/images/magurok/magurok1706/magurok170600015/79561022-sign-in-icon-hand-holding-smartphone-with-login-page-and-login-and-password-registration-form.jpg";
  final String assetImage = "assets/image.png";

  bool isChecked = false;
  int selectedRadioValue = 1;


  @override
  Widget build(BuildContext context) {
    print("build function called ********************");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [

          Image.network(
              imageSrc,
            height: 150,
            width: 150,
            // fit: BoxFit.,
          ),


          // const SizedBox(
          //   height: 10,
          // ),


          const Text(
            "Sign Up Screen",
            style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Text(
            "Build Your profile by registration.",
            style: TextStyle(
                color: Colors.deepPurple.withOpacity(.5),
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),


          const SizedBox(
            height: 10,
          ),


          Row(
            children: [
              Expanded(
                child: PrimaryTextInputWidget(
                  controller: emailController,
                  hintText: "First Name",
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              Expanded(
                child: PrimaryTextInputWidget(
                  controller: emailController,
                  hintText: "Last Name",
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          PrimaryTextInputWidget(
            controller: emailController,
            hintText: "Email",
          ),


          const SizedBox(
            height: 10,
          ),


          PrimaryTextInputWidget(
            controller: emailController,
            hintText: "Phone Number",
          ),

          const SizedBox(
            height: 10,
          ),

          PasswordInputWidget(
            controller: passwordController,
            hintText: "Enter Password",
          ),


          const SizedBox(
            height: 10,
          ),


          PasswordInputWidget(
            controller: passwordController,
            hintText: "Confirm Password",
          ),

          RadioListTile(
            title: const Text("Admin"),
            value: 1,
            groupValue: selectedRadioValue,
            dense: true,
            onChanged: (value){
              selectedRadioValue = value!;
              setState(() {

              });
            },
          ),

          RadioListTile(
            title: const Text("User"),
            value: 2,
            groupValue: selectedRadioValue,
            dense: true,
            onChanged: (value){
              selectedRadioValue = value!;
              setState(() {

              });
            },
          ),

          CheckboxListTile(
            dense: true,
              title: const Text(
                  "Agree with T&C and Privacy Policy?",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12
                ),
              ),
              value: isChecked,
              onChanged: (value) {
                isChecked = value!;

                setState(() {});
              }),

          ElevatedButton(
            onPressed: () {},
            child: const Text("Registration"),
          ),
        ],
      ),
    );
  }
}
