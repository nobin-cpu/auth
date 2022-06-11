import 'package:authfire/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication_service.dart';

class signIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: "email"),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: "password"),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text("sign in"),
          )
        ],
      ),
    );
  }
}
