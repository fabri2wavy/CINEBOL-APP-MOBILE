import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cinebol/control_autenticacion.dart';

class Pantallainicial extends StatefulWidget {
  const Pantallainicial({super.key});

  @override
  State<Pantallainicial> createState() => _PantallainicialState();
}

class _PantallainicialState extends State<Pantallainicial> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Controlautenticacion()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF990A0A),
              Color(0xFFFF1111),
              Color(0xFFFF1111),
              Color(0xFF990A0A),
            ],
            stops: [0.03, 0.31, 0.72, 1.0],
          ),
        ),
        alignment: Alignment.center,
        child: Image.asset('assets/images/logo.png', width: 200),
      ),
    );
  }
}
