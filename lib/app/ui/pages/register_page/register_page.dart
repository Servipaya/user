import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user/app/ui/pages/login_page/login_page.dart';
import 'package:user/app/ui/theme/header_paya.dart';
import 'package:user/app/ui/theme/theme_paya.dart';
import '../../../controllers/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: const <Widget>[
          //HeaderDiagonal(),
          HeaderWaveTwoArriba(),
          ListaRegister(),
        ],
      ),
    );
  }
}

class ListaRegister extends StatelessWidget {
  const ListaRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Text(
                "Registro Usuario",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Ingrese nombre",
                labelText: "Nombre",
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 157, 34, 234),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Ingrese apellidos",
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 157, 34, 234),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Ingrese mobil",
                prefixIcon: Icon(
                  Icons.mobile_friendly,
                  color: Color.fromARGB(255, 157, 34, 234),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Ingrese email",
                prefixIcon: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 157, 34, 234),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Ingrese clave",
                prefixIcon: Icon(
                  Icons.password,
                  color: Color.fromARGB(255, 157, 34, 234),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: ThemeHelper().buttonBoxDecoration(
                  context, "", ""), //"eb2207", "6D05E8" , "3936F5"
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Registar'.toUpperCase(),
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
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  " tengo cuenta?   ",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Get.to(LoginPage());
                  },
                  child: const Text(
                    " Ingresar",
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
