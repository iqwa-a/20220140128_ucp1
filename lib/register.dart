import 'package:flutter/material.dart';
import 'package:ucp1/login_page.dart';
 
 class Register extends StatefulWidget {
   const Register({ Key? key }) : super(key: key);
 
   @override
   State<Register> createState() => _RegisterState(); }
 
 class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
   final TextEditingController _passwordController = TextEditingController();
   final TextEditingController _confirmPasswordController = TextEditingController();
   final TextEditingController _nameController = TextEditingController();
   final TextEditingController _phoneController = TextEditingController();
   
   bool _obscurePassword = true;
   bool _obscureConfirmPassword = true;
   @override
   Widget build(BuildContext context) {
     final _formkey = GlobalKey<FormState>();
     return Scaffold(
       body: Form(
         key: _formkey,
         child: SingleChildScrollView(
           padding: const EdgeInsets.all(30.0),
           child: Container(
             child: Center(
               child: Column(
                 children: [
                   const SizedBox(
                     height: 150,
                   ),
                   Image.asset(
                     'assets/logo.jpg',
                     height: 100,
                     width: 90,
                   ),
                   Text(
                     "Daftar Akun Baru",
                     style: Theme.of(context).textTheme.headlineLarge,
                   ),
                   const SizedBox(
                     height: 50,
                   ),
                   const Text('Nama Lengkap'),
                   TextFormField(
                     controller: _nameController,
                     decoration: InputDecoration(
                       labelText: 'Nama Lengkap',
                       prefixIcon: new Icon(Icons.person),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),
                     ),
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Harap Masukkan Nama Lengkap';
                       }
                     },
                   ),
                   const SizedBox(height: 20),
                   Row(
                     children: [
                       Expanded(
                         child: Column(
                           children: [
                             const Text('Email'),
                             TextFormField(
                               controller: _emailController,
                               decoration: InputDecoration(
                                 labelText: 'Email',
                                 prefixIcon: new Icon(Icons.email),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                               ),
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Harap Masukkan Email';
                                 }
                               },
                             ),
                           ],
                         ),
                       ),
                       Expanded(
                         child: Column(
                           children: [
                             const Text('No HP'),
                             TextFormField(
                               controller: _phoneController,
                               decoration: InputDecoration(
                                 labelText: 'No. Telepon',
                                 prefixIcon: new Icon(Icons.phone),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                               ),
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Harap Masukkan No. Telepon';
                                 }
                               },
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                   const SizedBox(height: 20),
                   Row(
                     children: [
                       Expanded(
                         child: Column(
                           children: [
                             const Text('Password'),
                             TextFormField(
                               controller: _passwordController,
                               obscureText: _obscurePassword,
                               keyboardType: TextInputType.visiblePassword,
                               decoration: InputDecoration(
                                 labelText: 'Password',
                                 prefixIcon: new Icon(Icons.lock),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 suffixIcon: IconButton(
                                   icon:
                                       Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                                   onPressed: () {
                                     setState(() {
                                       _obscurePassword = !_obscurePassword;
                                     });
                                   },
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       const SizedBox(height: 20),
                       Expanded(
                         child: Column(
                           children: [
                             Text('Confirmasi Password'),
                             TextFormField(
                               controller: _confirmPasswordController,
                               obscureText: _obscureConfirmPassword,
                               keyboardType: TextInputType.visiblePassword,
                               decoration: InputDecoration(
                                 labelText: 'Password',
                                 prefixIcon: new Icon(Icons.lock),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 suffixIcon: IconButton(
                                   icon:
                                       Icon(_obscureConfirmPassword ? Icons.visibility : Icons.visibility_off),
                                   onPressed: () {
                                     setState(() {
                                       _obscureConfirmPassword = !_obscureConfirmPassword;
                                     });
                                   },
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                   
                 ],
               ),
             ),
           ),
         )),
     );
   }
}