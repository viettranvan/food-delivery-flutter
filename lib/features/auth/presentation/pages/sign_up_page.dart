import 'package:flutter/material.dart';
import 'package:food_delivery/generated/l10n.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(S.of(context).signUp),
          )
        ],
      ),
    );
  }
}
