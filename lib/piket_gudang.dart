import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ucp1/detailpiket_gudang.dart';


class PiketGudang extends StatefulWidget {
  final String nama;
  const PiketGudang({super.key, required this.nama});

  @override
  State<PiketGudang> createState() => _PiketGudangState();
}

class _PiketGudangState extends State<PiketGudang> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController tugasController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  List<Map<String, String>> piketList = [];

  Future<void> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    namaController.text = widget.nama;
  }
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Piket Gudang'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nama Anggota',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: namaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pilih Tanggal',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => _selectedDate(context),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Tugas Piket',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: tugasController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan tugas',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    if (namaController.text.isEmpty || tugasController.text.isEmpty ) {
                       ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                      content: Text('Semua kolom harus diisi!'),
                       backgroundColor: Colors.red,
                       ),
                      );
                    }else {
                      setState(() {
                        piketList.add({
                          'tugas': tugasController.text,
                          'tanggal':DateFormat('d/M/yyyy').format(selectedDate),
                          'nama': widget.nama,
                        });
                      });
                      tugasController.clear();
                      namaController.clear();
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
            const SizedBox(height: 24),
                       
            const Text(
              'Daftar Tugas Piket',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            piketList.isNotEmpty
                ? Column(
                    children: piketList.map((piket) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Text(piket['tugas']!),
                          subtitle: Text(
                              '${piket['nama']} - ${piket['tanggal']}',
                               style: const TextStyle(color: Colors.white70),),
                               trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                               ),
                              onTap: () {
                              Navigator.push(
                               context,
                               MaterialPageRoute(
                                builder: (context) => DetailPiket(
                                name: piket['nama']!,
                                date: piket['tanggal']!,
                                 task: piket['tugas']!,
                                 ),
                               ),
                             );
                           }
                        ),
                      );
                    }).toList(),
                  )
                : const Center(child: Text('Belum ada data piket')),
          ],
        ),
      ),
    );
  }
}