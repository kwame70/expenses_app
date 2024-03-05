import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              "Hello, there!",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Image.asset("assets/images/login.png"),
            MyTextWidget(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
              hintext: "Email/Username",
              keyboardType: TextInputType.emailAddress,
              hideText: false,
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
              height: 5,
            ),
            const Text(
              "Forgot password?",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.login_outlined),
              label: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_outlined),
              label: const Text(
                " No account yet? SignUp",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
