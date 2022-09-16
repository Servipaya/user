import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user/app/ui/global_widgets/botton_gordo.dart';
import '../../../controllers/prueba_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/models/model_prueba.dart';

import '../../global_widgets/headers.dart';

class PruebaPage extends GetView<PruebaController> {
  final item = items;
  // const PruebaPage({
  //   Key? key,
  //   required this.items,
  // }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final items = this.items;
    print(item);

    List<Widget> itenMap = item
        .map((item) => BotonGordo(
              icon: item.icon,
              texto1: item.texto,
              color1: item.color1,
              color2: item.color2,
              onPress: () {
                print('hola!!!!!!');
              },
            ))
        .toList();
    print(itenMap);
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 250),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                ...itenMap

                // BottonGordoTemp(),
              ],
            ),
          ),
          _Encabezado(),
        ],
      ),
    );
  }
}

class _Encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconHeader(
          icon: FontAwesomeIcons.plus,
          titulo: 'Asistencia Médica',
          subtitulo: 'Haz solicitado',
        ),
        Positioned(
          right: 0,
          top: 45,
          child: RawMaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            padding: EdgeInsets.all(15.0),
            child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.white),
          ),
        )
      ],
    );
  }
}

class BottonGordoTemp extends StatelessWidget {
  const BottonGordoTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.carCrash,
      texto1: 'Motor Accidente!!!!!',
      color1: Color(0xff6989F5),
      color2: Color(0xff906EF5),
      onPress: () {
        print('preision botton');
      },
    );
  }
}

class HeaderPage extends StatelessWidget {
  const HeaderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Haz solicitado',
      subtitulo: 'Asistencia Médica',
    );
  }
}
