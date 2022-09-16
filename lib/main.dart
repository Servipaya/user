import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/data/models/model_prueba.dart';
import 'app/ui/pages/login_page/login_page.dart';
import 'app/ui/pages/prueba_page/prueba_page.dart';

void main() {
  runApp(const MyApp());
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
      ),
      home: PruebaPage(), // items),
    );
  }
}
