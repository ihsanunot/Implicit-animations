import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SliderKedua(),
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
    );
  }
}

class SliderKedua extends StatefulWidget {
  const SliderKedua({super.key});

  @override
  State<SliderKedua> createState() => _SliderKeduaState();
}

class _SliderKeduaState extends State<SliderKedua> {
  double _angkaLabel = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider2Demons')),
      body: Slider(
          value: _angkaLabel,
          max: 100,
          divisions: 5,
          label: _angkaLabel.round().toString(),
          onChanged: (double value) {
            setState(() {
              _angkaLabel = value;
            });
          }),
    );
  }
}
