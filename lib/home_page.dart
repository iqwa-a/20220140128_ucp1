import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Selamat datang'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(1.0), // Memberi jarak pada sisi kiri
          child: CircleAvatar(
            radius: 50, // Ukuran lingkaran
            backgroundImage: AssetImage('assets/logo.jpg'), // Gambar logo
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box)),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      body: Center(
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Selamat Datang di Home Page!')],
        ),
      ),
    );
  }
}