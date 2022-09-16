import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user/app/ui/global_widgets/headers.dart';
import '../../../controllers/login_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('LoginPage'),
      // ),
      body: IconHeader(
        icon: FontAwesomeIcons.plus,
        titulo: 'Haz solicitado',
        subtitulo: 'Asistencia Médica',
      ),
    );
  }
}
