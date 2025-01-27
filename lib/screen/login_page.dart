
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  final String ? number;
   final String ? name;
  const LoginScreen({super.key,this.number,this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: Column(
            spacing: 20 ,
            children: [
              Text(number ?? "n/a"),
              Text(name ?? "n/a"),
            ],
          ),
        ),
      ),
    );
  }
}