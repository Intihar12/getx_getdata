import 'package:api_sigi/ui/HOMESCREEN/homescreen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}
