import 'package:flutter/material.dart';
  
  class RegisterPage extends StatefulWidget {
    const RegisterPage({super.key});
  
    @override
    State<RegisterPage> createState() => _RegisterPageState();
  }
  
  class _RegisterPageState extends State<RegisterPage> {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
  
    @override
    void initState() {
      super.initState();
    }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Image.asset(
              'assets/logo.jpg',
              width: 120,
              height: 120,
            
          ),
        ),
      );
    }
  } 