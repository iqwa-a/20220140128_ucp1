import 'package:flutter/material.dart';
  
  class RegisterPage extends StatefulWidget {
    const RegisterPage({super.key});
  
    @override
    State<RegisterPage> createState() => _RegisterPageState();
  }
  
  class _RegisterPageState extends State<RegisterPage> {
    final namaController = TextEditingController();
    final emailController = TextEditingController();
    final noHpController = TextEditingController();
    final passwordController = TextEditingController();
    final konfirmasiPasswordController = TextEditingController();
  
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
                const Text(
              'Daftar Akun Baru',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Lengkap';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'email'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'email';
                    }
                    return null;
                  },
                ),
                 TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'No HP'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'No HP';
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
                      return 'password';
                    }
                    return null;
                  },
                ), 
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: ' Konfirmasi Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Konfirmasi password';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                onPressed: () {}, 
                child: Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                  // Navigator.pop(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const LoginPage()),
                  // );
                },
                child: Text('Sudah punya akun? Login Sekarang!'),
              ),
              ],
            ),
          ),
        ),
      );
    }
  } 