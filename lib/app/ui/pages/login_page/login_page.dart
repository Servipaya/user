// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:user/app/ui/pages/register_page/register_page.dart';
import 'package:user/app/ui/theme/header_paya.dart';
import 'package:user/app/ui/theme/theme_paya.dart';

import '../../../controllers/login_controller.dart';

Color purpleColor = const Color.fromARGB(255, 157, 34, 234);

// ignore: use_key_in_widget_constructors
class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    //final items = this.items;

    return Scaffold(
      //backgroundColor: Colors.red,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: const <Widget>[
          //HeaderDiagonal(),
          HeaderWaveTwoAbajo(),

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
          height: 100,
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
        Text("Usuario", style: TextStyle(fontSize: 20, color: purpleColor)),
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
        Text("Clave",
            style: TextStyle(
              fontSize: 20,
              color: purpleColor,
            )),
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
            decoration: ThemeHelper().buttonBoxDecoration(
                context, "", ""), //"eb2207", "6D05E8" , "3936F5"
            child: ElevatedButton(
              style: ThemeHelper().buttonStyle(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'Ingresar'.toUpperCase(),
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
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "No tengo cuenta?   ",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            InkWell(
              onTap: () {
                Get.to(RegisterPage());
              },
              child: const Text(
                " Registro",
                style: TextStyle(fontSize: 15, color: Colors.redAccent),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
