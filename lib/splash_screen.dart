import 'package:coba_1/menu.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> cekSession() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (_) => const Menu()), (route) => false);
    });
  }

  @override
  void initState() {
    cekSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
            child: Image.asset(
          "assets/logoutama.png",
          height: MediaQuery.of(context).size.height,
        )),
      ),
    );
  }
}
