// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user/app/ui/theme/theme_paya.dart';

import '../../../controllers/prueba_controller.dart';

import '../../global_widgets/headers.dart';

class PruebaPageLogin extends GetView<PruebaController> {
  // const PruebaPageLogin({
  //   Key? key,
  //   required this.items,
  // }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final items = this.items;

    return Scaffold(
      //backgroundColor: Colors.red,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: const <Widget>[
          //HeaderDiagonal(),
          HeaderWaveGradient(),
          ImagePaya(),
        ],
      ),
    );
  }
}

class ImagePaya extends StatelessWidget {
  const ImagePaya({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Image.asset(
          "assets/inicio/Paya.png",
          fit: BoxFit.cover,
          height: 120,
          width: 230,
        ),
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListLogin(),
          ),
        ),
      ],
    );
  }
}

class ListLogin extends StatelessWidget {
  const ListLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text("Usuario",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 186, 104, 200))),
        const SizedBox(
          height: 15,
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
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 186, 104, 200))),
        const SizedBox(
          height: 15,
        ),
        const TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: "Ingrese Clave"),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Container(
            decoration: ThemeHelper().buttonBoxDecoration(context),
            child: ElevatedButton(
              style: ThemeHelper().buttonStyle(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'Sign In'.toUpperCase(),
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              onPressed: () {
                //After successful login we will redirect to profile page. Let's create profile page now
              },
            ),
          ),
        ),
      ],
    );
  }
}
