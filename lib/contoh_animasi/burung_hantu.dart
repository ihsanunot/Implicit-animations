import 'package:flutter/material.dart';

const owlUrl =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';

class FadeInContohAwal extends StatefulWidget {
  const FadeInContohAwal({super.key});

  @override
  State<FadeInContohAwal> createState() => _FadeInContohAwalState();
}

class _FadeInContohAwalState extends State<FadeInContohAwal> {
  double opasitas = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.network(owlUrl),
          AnimatedOpacity(
            duration: const Duration(seconds: 3),
            opacity: opasitas,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                opasitas = 1;
              });
            },
            child: const Text(
              'Show Details',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Type: Owl',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Age: 28',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Employment: Self',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FadeInContohAwal(),
      // home:Text('test aja'),
      // body: Center(child: FadeInDemo()),
    );
  }
}

void main() => runApp(const MyApp());
