import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/ui/screens/menu.dart';
import 'package:juici/ui/screens/parchase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    home: ParchaseItems(),
    );
  }
}


