import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Image.asset("assets/images/sign_up.png"),
            MyTextWidget(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
              hintext: "Email",
              hideText: false,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextWidget(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
              ),
              hintext: "Password",
              hideText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextWidget(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
              ),
              hintext: "Confirm password",
              hideText: true,
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_sharp),
              label: const Text(
                "Create my account",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/glogo.jpg",
                height: 24,
                width: 35,
              ),
              label: const Text(
                "Sign up with Google",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.apple_outlined),
              label: const Text(
                "Sign up with Apple",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
