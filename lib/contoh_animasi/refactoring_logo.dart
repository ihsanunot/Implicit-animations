import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogoAwal(),
      // Contoh Refactoring with AnimatedBuilder
    );
  }
}

class GrowTransisi extends StatelessWidget {
  const GrowTransisi({required this.child, required this.animasi, super.key});

  final Widget child;
  final Animation<double> animasi;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animasi,
        builder: (context, child) {
          return SizedBox(
            height: animasi.value,
            width: animasi.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}

class AnimasiFactor extends StatelessWidget {
  const AnimasiFactor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: const FlutterLogo(),
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
    animasi = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GrowTransisi(
      child: const AnimasiFactor(),
      animasi: animasi,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
