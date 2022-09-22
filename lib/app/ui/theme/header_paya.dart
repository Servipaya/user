// ignore_for_file: sized_box_for_whitespace, prefer_const_declarations, unused_local_variable, unnecessary_cast

import 'package:flutter/material.dart';

Color purpleColor = const Color.fromARGB(255, 157, 34, 234);
Color cyanColor = const Color(0xFF99D5E5);

class HeaderWaveGradiente extends StatelessWidget {
  const HeaderWaveGradiente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderWaveGradientePainter()),
    );
  }
}

class _HeaderWaveGradientePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(0.0, 155), radius: 180);

    final Gradient gradient = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color.fromARGB(255, 157, 34, 234),
          // Color(0xffC012FF),
          Color(0xff6D05FA),
        ],
        stops: [
          0.2,
          0.5,
          1.0,
        ]);

    final lapiz = Paint()..shader = gradient.createShader(rect);

//Propiedades
    //lapiz.color = Color(0xff683687);
    //lapiz.style = PaintingStyle.stroke;  //stroke para dibujar con el lapiz
    lapiz.style = PaintingStyle.fill; //fill para rellenar lo dibujado
    //lapiz.strokeWidth = 20;

    // ignore: unused_local_variable
    final path = Path();

    // Dibujar con el path y el lapiz

    //todo: Ola hacia arriba
    //path.lineTo(0, size.height * 0.3);
    //path.quadraticBezierTo(size.width * 0.25, size.height * 0.35,
    //    size.width * .5, size.height * 0.3);
    //path.quadraticBezierTo(
    //    size.width * 0.75, size.height * 0.25, size.width, size.height * 0.3);
    //path.lineTo(size.width, 0);

    //todo: Ola hacia abajo
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.80,
        size.width * .5, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.7, size.width, size.height * 0.75);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//class _HeaderWaveGradientePainter2 extends CustomPainter {
//  @override
//  void paint(Canvas canvas, Size size) {
//    final Rect rect =
//        Rect.fromCircle(center: const Offset(0.0, 155), radius: 180);
//
//    final Gradient gradient = const LinearGradient(
//        begin: Alignment.topCenter,
//        end: Alignment.bottomCenter,
//        colors: <Color>[
//          Color.fromARGB(255, 104, 54, 228),
//          Color.fromARGB(255, 96, 56, 154),
//          // Color(0xffC012FF),
//          Color.fromARGB(255, 46, 98, 137),
//        ],
//        stops: [
//          0.2,
//          0.5,
//          1.0,
//        ]);
//
//    final lapiz = Paint()..shader = gradient.createShader(rect);
//
////Propiedades
//    //lapiz.color = Color(0xff683687);
//    //lapiz.style = PaintingStyle.stroke;  //stroke para dibujar con el lapiz
//    lapiz.style = PaintingStyle.fill; //fill para rellenar lo dibujado
//    //lapiz.strokeWidth = 20;
//
//    // ignore: unused_local_variable
//    final path = Path();
//
//    // Dibujar con el path y el lapiz
//
//    //todo: Ola hacia arriba
//
//    //todo: Ola hacia abajo
//    path.moveTo(0, size.height * 0.70);
//    path.quadraticBezierTo(size.width * 0.25, size.height * 0.80,
//        size.width * .5, size.height * 0.75);
//    path.quadraticBezierTo(
//        size.width * 0.75, size.height * 0.7, size.width, size.height * 0.75);
//    path.lineTo(size.width, size.height);
//    path.lineTo(0, size.height);
//
//    canvas.drawPath(path, lapiz);
//  }
//
//  @override
//  bool shouldRepaint(covariant CustomPainter oldDelegate) {
//    return true;
//  }
//}

class HeaderWaveTwoAbajo extends StatelessWidget {
  const HeaderWaveTwoAbajo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _HeaderWaveTwoAbajo(),
      child: Container(
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}

class _HeaderWaveTwoAbajo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    final Rect rect =
        Rect.fromCircle(center: const Offset(0.0, 155), radius: 180);

    final Gradient gradient = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          // Color(0xffC012FF),
          Color.fromARGB(233, 57, 54, 245),
          Color.fromARGB(255, 5, 126, 232),
          Color.fromARGB(150, 139, 196, 241),
        ],
        stops: [
          0.2,
          0.5,
          1.0,
        ]);

    final lapiz = Paint()..shader = gradient.createShader(rect);
    final alto = 0.60;

    Path color2Path = Path();
    color2Path.moveTo(0, (0.20 + alto) * size.height);
    color2Path.quadraticBezierTo(size.width * 0.25, (alto + 0.25) * size.height,
        size.width * 0.5, (alto + 0.22) * size.height);
    color2Path.quadraticBezierTo(size.width * 0.75, (alto + 0.15) * size.height,
        size.width, (alto + 0.25) * size.height);
    color2Path.lineTo(size.width, size.height);
    color2Path.lineTo(0, size.height);
    //paint.color = lapiz;
    canvas.drawPath(color2Path, lapiz);

    Path color1Path = Path();
    color1Path.moveTo(0, size.height * (alto + 0.25));
    color1Path.quadraticBezierTo(size.width * 0.25, size.height * (alto + 0.30),
        size.width * .5, size.height * (alto + 0.25));
    color1Path.quadraticBezierTo(size.width * 0.75, size.height * (alto + 0.20),
        size.width, size.height * (alto + 0.25));
    color1Path.lineTo(size.width, size.height);
    color1Path.lineTo(0, size.height);
    paint.color = purpleColor;
    canvas.drawPath(color1Path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveTwoArriba extends StatelessWidget {
  const HeaderWaveTwoArriba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _HeaderWaveTwoArriba(),
      child: Container(
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}

class _HeaderWaveTwoArriba extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    final Rect rect =
        Rect.fromCircle(center: const Offset(0.0, 155), radius: 180);

    final Gradient gradient = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          // Color(0xffC012FF),
          Color.fromARGB(150, 139, 196, 241),
          Color.fromARGB(255, 5, 126, 232),
          Color.fromARGB(233, 57, 54, 245),
        ],
        stops: [
          1.0,
          0.5,
          0.2,
        ]);

    final lapiz = Paint()..shader = gradient.createShader(rect);
    final alto = 0.0;

    Path color2Path = Path();
    color2Path.lineTo(0, size.height * (alto + 0.25));
    color2Path.quadraticBezierTo(size.width * 0.25, size.height * (alto + 0.15),
        size.width * .5, size.height * (alto + 0.20));
    color2Path.quadraticBezierTo(size.width * 0.75, size.height * (alto + 0.28),
        size.width, size.height * (alto + 0.18));
    color2Path.lineTo(size.width, 0);
    //paint.color = lapiz;
    canvas.drawPath(color2Path, lapiz);

    Path color1Path = Path();
    color1Path.lineTo(0, size.height * (alto + 0.15));
    color1Path.quadraticBezierTo(size.width * 0.25, size.height * (alto + 0.08),
        size.width * .5, size.height * (alto + 0.15));
    color1Path.quadraticBezierTo(size.width * 0.75, size.height * (alto + 0.20),
        size.width, size.height * (alto + 0.15));
    color1Path.lineTo(size.width, 0);

    paint.color = purpleColor;
    canvas.drawPath(color1Path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
