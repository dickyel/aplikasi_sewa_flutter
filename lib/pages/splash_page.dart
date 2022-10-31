import 'dart:async';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement setState
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Container(
          width: 266,
          height: 162,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/logo-apps.png'),
          )),
        ),
      ),
    );
  }
}
