import 'package:flutter/material.dart';
import 'package:ucp1/home_page.dart';
import 'package:ucp1/register_page.dart';
  
  class LoginPage extends StatefulWidget {
    const LoginPage({super.key});
  
    @override
    State<LoginPage> createState() => _LoginPageState();
  }
  
  class _LoginPageState extends State<LoginPage> {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
  
    @override
    void initState() {
      super.initState();
    }
  
    @override
    Widget build(BuildContext context) {
      final _formKey = GlobalKey<FormState>();
      return Scaffold( 
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Image.asset(
              'assets/logo.jpg',
              width: 120,
              height: 120,
            ),
                const Text(
              'Selamat Datang Kembali',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                },
                child: Text('Login'),
              ),
                TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Belum punya akun? Daftar'),
              ),
              ],
            ),
          ),
        ),
      );
    }
  }