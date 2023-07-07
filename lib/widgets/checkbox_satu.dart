import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('CheckBox Sample')),
        body: const KotakCeklis(),
      ),
    );
  }
}

class KotakCeklis extends StatefulWidget {
  const KotakCeklis({super.key});

  @override
  State<KotakCeklis> createState() => _KotakCeklisState();
}

class _KotakCeklisState extends State<KotakCeklis> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
        MaterialState.hovered,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
            getColor; // cuma testing getColor nya
          });
        });
  }
}
