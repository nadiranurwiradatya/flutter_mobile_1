// lib/pages/kalkulator_page.dart
import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({Key? key}) : super(key: key); // Tambahkan const dan key

  @override
  _KalkulatorPageState createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final TextEditingController _angka1Controller = TextEditingController();
  final TextEditingController _angka2Controller = TextEditingController();
  double _hasil = 0;

  void _penjumlahan() {
    setState(() {
      _hasil = (double.tryParse(_angka1Controller.text) ?? 0) +
          (double.tryParse(_angka2Controller.text) ?? 0);
    });
  }

  void _pengurangan() {
    setState(() {
      _hasil = (double.tryParse(_angka1Controller.text) ?? 0) -
          (double.tryParse(_angka2Controller.text) ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _angka1Controller,
              decoration: const InputDecoration(labelText: 'Angka Pertama'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _angka2Controller,
              decoration: const InputDecoration(labelText: 'Angka Kedua'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _penjumlahan,
                  child: const Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: _pengurangan,
                  child: const Text('Kurang'),
                ),
              ],
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
