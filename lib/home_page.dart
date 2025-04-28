import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String nama;

  const HomePage(
    {super.key,
    required this.nama});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('Selamat datang, ${widget.nama}!'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(1),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/logo.jpg'),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box)),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/logo2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}