import 'package:flutter/material.dart';
import 'package:ucp1/pelanggan_page.dart';
import 'package:ucp1/piket_gudang.dart';

class HomePage extends StatefulWidget {
  final String nama;

  const HomePage({super.key, required this.nama});

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

            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  PiketGudang(nama: widget.nama),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.calendar_today, color: Colors.white),
                            SizedBox(height: 3),
                            Text(
                              'Data Piket',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                    onTap: () {
                    Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => const AddPelanggan()),
                     );
                    },  
                    child: Container(
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                    color: Colors.red,
                     borderRadius: BorderRadius.circular(3),
                     ),                               
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.people, color: Colors.white),
                          SizedBox(height: 8),
                          Text(
                            'Data Pelanggan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 100,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.inventory_2, color: Colors.white),
                    SizedBox(height: 8),
                    Text(
                      'Barang Masuk/Keluar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}