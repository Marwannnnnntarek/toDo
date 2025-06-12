import 'package:flutter/material.dart';
import 'package:todo/features/auth/views/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: RegisterBody()));
  }
}
