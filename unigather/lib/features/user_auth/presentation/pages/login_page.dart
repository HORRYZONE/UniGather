import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unigather/features/user_auth/presentation/widgets/form_container_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 303,
            ),
            FormContainerWidget(
              hintText: "Email",
              isPasswordField: false,
            ),
            SizedBox(height: 10,),
            FormContainerWidget(
              hintText: "Password",
              isPasswordField: true,
            ),
          ],
        ),
      ),
    );
  }
}