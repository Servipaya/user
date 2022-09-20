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
      backgroundColor: const Color(0xff154c79),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/inicio/Paya.png",
                fit: BoxFit.cover,
                height: 230,
                width: 180,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text("Usuario",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(
              height: 25,
            ),
            const TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: "Ingrese numero de celular"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Clave",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(
              height: 25,
            ),
            const TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: "Ingrese Clave"),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
