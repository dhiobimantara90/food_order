import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BackBottom extends StatelessWidget {
  const BackBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ), systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),);
  }
}