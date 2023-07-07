import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogoAwal(),
      // Contoh addStatusListener buat cek state animasi logo 1
    );
  }
}

class AnimasiLogo extends AnimatedWidget {
  const AnimasiLogo({super.key, required Animation<double> animasi})
      : super(listenable: animasi);

  @override
  Widget build(BuildContext context) {
    final animasi = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animasi.value,
        width: animasi.value,
        child: const FlutterLogo(),
      ),
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
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ..addStatusListener((status) => print('$status'));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) => AnimasiLogo(animasi: animasi);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
