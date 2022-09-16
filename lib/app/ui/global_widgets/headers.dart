// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: use_key_in_widget_constructors
class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff683687),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
      ));
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderDiagonalPainter()),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

//Propiedades
    lapiz.color = Color(0xff683687);
    //lapiz.style = PaintingStyle.stroke;  //stroke para dibujar con el lapiz
    lapiz.style = PaintingStyle.fill; //fill para rellenar lo dibujado
    //lapiz.strokeWidth = 20;

    // ignore: unused_local_variable
    final path = Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderCurvoPainter()),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

//Propiedades
    lapiz.color = Color(0xff683687);
    //lapiz.style = PaintingStyle.stroke;  //stroke para dibujar con el lapiz
    lapiz.style = PaintingStyle.fill; //fill para rellenar lo dibujado
    //lapiz.strokeWidth = 20;

    // ignore: unused_local_variable
    final path = Path();

    // Dibujar con el path y el lapiz

    //path.lineTo(0, size.height * 0.3);
    //path.quadraticBezierTo(
    //    size.width * 0.5, size.height * 0.4, size.width, size.height * 0.3);
    //path.quadraticBezierTo(
    //    size.width * 0.5, size.height * 0.2, size.width, size.height * 0.3);
    //todo: Ola hacia arriba
    //path.lineTo(size.width, 0);
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

//todo: Ola con gradiente de color
class HeaderWaveGradient extends StatelessWidget {
  const HeaderWaveGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeaderWaveGradientPainter()),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(0.0, 155), radius: 180);

    final Gradient gradient = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012FF),
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
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.35,
        size.width * .5, size.height * 0.3);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.25, size.width, size.height * 0.3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  IconHeader({
    required this.icon,
    required this.titulo,
    required this.subtitulo,
    this.color1 = const Color(0xff526BF6),
    this.color2 = const Color(0xff673AC2),
  });

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.70);
    return Stack(
      children: <Widget>[
        _IconHeaderBackground(color1: this.color1, color2: this.color2),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,
            //child: Icon(
            //  Icons.add,
            size: 200,
            color: Colors.white.withOpacity(0.20),
          ),
        ),
        Column(
          children: <Widget>[
            const SizedBox(height: 80, width: double.infinity),
            Text(
              this.titulo,
              style: TextStyle(fontSize: 20, color: colorBlanco),
            ),
            const SizedBox(height: 20),
            Text(
              this.subtitulo,
              style: TextStyle(fontSize: 25, color: colorBlanco),
            ),
            const SizedBox(height: 20),
            FaIcon(
              this.icon,
              size: 80,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  const _IconHeaderBackground({
    Key? key,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              this.color1,
              this.color2,
            ]),
      ),
    );
  }
}
