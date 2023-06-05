import 'package:flutter/material.dart';
import 'package:splash_and_icon/screens/login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),
          () => Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (x, y, z) => Login(),
              transitionDuration: Duration(milliseconds: 100),
              transitionsBuilder: (a, b, c, d) => FadeTransition(opacity: b, child: d),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent.shade400,
        alignment: Alignment.center,
        child: const Text(
          'Splash Screen',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
