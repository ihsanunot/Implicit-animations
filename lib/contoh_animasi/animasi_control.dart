import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogoAwal(),
      // Animation­Controller Contoh
    );
  }
}

class LogoAwal extends StatefulWidget {
  const LogoAwal({super.key});

  @override
  State<LogoAwal> createState() => _LogoAwalState();
}

class _LogoAwalState extends State<LogoAwal>
    with SingleTickerProviderStateMixin {
  late Animation<double> animasi;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animasi = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        setState(() {
          // tes
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animasi.value,
        width: animasi.value,
        child: const FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
