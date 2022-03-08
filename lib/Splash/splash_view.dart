import 'package:corte_2/pages/boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('lib/img/splash.png');
    _toOnBoarding();
  }

  _toOnBoarding() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        ));
  }

  _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);

    setState(() => this.image = image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
      child: CustomPaint(
        painter: _SplashCanvas(image),
      ),
      height: double.infinity,
      width: double.infinity,
    )));
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? image;
  const _SplashCanvas(this.image);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xFF76AB56);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.10);
    //path.lineTo(size.height * 0.08, size.height * 0.12);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.15,
        size.width * 0.30, size.height * 0.15);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.07,
        size.width * 0.70, size.height * 0.07);
    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.10, size.width, size.height * 0.10);
    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.10, size.height * 0.8, size.width, size.height);

    canvas.drawPath(path, paint);

    // path.lineTo(size.width, size.height);
    // canvas.drawPath(path, paint);

    canvas.scale(0.35, 0.35);
    if (image != null) {
      canvas.drawImage(image!, Offset(size.width * 0.55, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
