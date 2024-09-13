// lib/pages/ganjil_genap_page.dart
import 'package:flutter/material.dart';

class GanjilGenapPage extends StatefulWidget {
  const GanjilGenapPage({Key? key})
      : super(key: key); // Tambahkan const dan key

  @override
  _GanjilGenapPageState createState() => _GanjilGenapPageState();
}

class _GanjilGenapPageState extends State<GanjilGenapPage> {
  final TextEditingController _angkaController = TextEditingController();
  String _hasil = '';

  void _cekGanjilGenap() {
    setState(() {
      int? angka = int.tryParse(_angkaController.text);
      if (angka == null) {
        _hasil = 'Masukkan angka yang valid';
      } else {
        _hasil = (angka % 2 == 0) ? 'Genap' : 'Ganjil';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cek Ganjil/Genap')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _angkaController,
              decoration: const InputDecoration(labelText: 'Masukkan Angka'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cekGanjilGenap,
              child: const Text('Cek'),
            ),
            const SizedBox(height: 20),
            Text(
              'Hasil: $_hasil',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
