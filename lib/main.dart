import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:user/app/ui/pages/login_page/prueba.dart';
import 'package:user/app/ui/pages/login_page/prueba_login.dart';

import 'app/data/models/model_prueba.dart';
import 'app/ui/pages/login_page/login_page.dart';
import 'app/ui/pages/prueba_page/prueba_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 157, 34, 234),
        accentColor: const Color.fromARGB(255, 157, 34, 234),
        //canvasColor: Colors.blue,
      ),
      //home: PruebaPage(),
      home: LoginPage(), // items),
    );
  }
}
