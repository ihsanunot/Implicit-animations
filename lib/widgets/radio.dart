import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Radio Ayana')),
        body: const Center(
          child: RadioTest(),
        ),
      ),
    );
  }
}

enum ContohVar { ayana, mona }

class RadioTest extends StatefulWidget {
  const RadioTest({super.key});

  @override
  State<RadioTest> createState() => _RadioTestState();
}

class _RadioTestState extends State<RadioTest> {
  ContohVar? _contohVar = ContohVar.ayana;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Ayana Shahab'),
          leading: Radio<ContohVar>(
            value: ContohVar.ayana,
            groupValue: _contohVar,
            onChanged: (ContohVar? value) {
              setState(() {
                _contohVar = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Mona Nabilah'),
          leading: Radio<ContohVar>(
            value: ContohVar.mona,
            groupValue: _contohVar,
            onChanged: (ContohVar? value) {
              setState(() {
                _contohVar = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
