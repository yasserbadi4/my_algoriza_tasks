import 'package:flutter/material.dart';
import 'package:task_1/features/login/presentation/widgets/signup_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpWidget(),
    );
  }
}
