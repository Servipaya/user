import 'package:flutter/material.dart';
import 'package:user/app/ui/theme/header_widget.dart';

class PruebaLoginPage extends StatefulWidget {
  const PruebaLoginPage({Key? key}) : super(key: key);

  @override
  _PruebaLoginPageState createState() => _PruebaLoginPageState();
}

class _PruebaLoginPageState extends State<PruebaLoginPage> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              height: _headerHeight,
              child: HeaderWidget(
                  _headerHeight,
                  true,
                  //    //Icons.login_rounded),
                  Icons.login_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
