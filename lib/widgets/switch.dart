import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Switch')),
        body: const Center(
          child: SwitchContoh(),
        ),
      ),
    );
  }
}

class SwitchContoh extends StatefulWidget {
  const SwitchContoh({super.key});

  @override
  State<SwitchContoh> createState() => _SwitchContohState();
}

class _SwitchContohState extends State<SwitchContoh> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}
